//
//  UIView+WFLoading.m
//  WFLoadingDemo
//
//  Created by Apple on 2018/10/8.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "UIView+WFLoading.h"
#import "WFLoadingView.h"
#import <objc/runtime.h>
@interface UIView ()

@property (nonatomic,strong,readonly)WFLoadingView * loadingView;

@end
@implementation UIView (WFLoading)

-(void)setLoadingView:(WFLoadingView *)loadingView{
    objc_setAssociatedObject(self, @selector(loadingView), loadingView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(WFLoadingView *)loadingView{
    WFLoadingView * loadingView = objc_getAssociatedObject(self, _cmd);
    if (!loadingView) {
        loadingView =[[WFLoadingView alloc]initWithFrame:self.bounds];
        self.loadingView = loadingView;
        self.loadingView.backgroundColor = [UIColor colorWithWhite:1 alpha:0.5];
        
    }
    return loadingView;
}
-(void)setWFLoadingTimeInterva:(NSTimeInterval)timeInterval{
    self.loadingView.timeInterval = timeInterval;
}
-(void)setWFLoadingImages:(NSArray<NSString *> *)images{
    self.loadingView.loadingImageArr = images;
}
-(void)showLoading{
    [self.loadingView removeFromSuperview];
    [self addSubview:self.loadingView];
    [self.loadingView startAnimating];
}
-(void)stopAnimating{
    [self.loadingView hideLoading];
}

-(void)showLoadingWithLoadingImageArr:(NSArray <NSString*>*)loadImages loadingTimeInterVal:(NSTimeInterval)loadingTimeInterVal{
    [self setWFLoadingImages:loadImages];
    self.loadingView.timeInterval = loadingTimeInterVal;
    [self showLoading];
}

-(void)showLoadingWithConfig:(WFLoadingConfig *)configModel{
    self.loadingView.config = configModel;
    [self showLoading];
}
-(void)showEmptyWithConfig:(WFLoadingConfig*)configModel{
    self.loadingView.config = configModel;
    [self.loadingView startAnimating];
    [self addSubview:self.loadingView];
    [self.loadingView hideLoading];
}



-(void)hideLoading{
    [self.loadingView removeFromSuperview];
}
@end
