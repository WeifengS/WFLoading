//
//  UIView+WFLoading.m
//  WFLoadingDemo
//
//  Created by Apple on 2018/10/8.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "UIView+WFLoading.h"
#import <objc/runtime.h>

//#import <objc/runtime.h>

@implementation UIView (WFLoading)

-(void)setLoadingView:(WFLoadingView *)loadingView{
    objc_setAssociatedObject(self, @selector(loadingView), loadingView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(WFLoadingView *)loadingView{
    WFLoadingView * loadingView = objc_getAssociatedObject(self, _cmd);
    if (!loadingView) {
        loadingView =[[WFLoadingView alloc]initWithFrame:self.bounds];
        self.loadingView = loadingView;
        [self addSubview:loadingView];
    }
    return loadingView;
}
-(void)setWFLoadingTimeInterva:(NSTimeInterval)timeInterval{
    self.loadingView.timeInterval = timeInterval;
}
-(void)setWFImages:(NSArray<NSString *> *)images{
    self.loadingView.loadingImageArr = [self getimages:images];
}
-(void)showLoading{
   
    [self.loadingView.animationView stopAnimating];
    [self.loadingView.animationView startAnimating];
}

-(void)showLoadingWithLoadingImageArr:(NSArray <NSString*>*)loadImages loadingTimeInterVal:(NSTimeInterval)loadingTimeInterVal{
    
   
    self.loadingView.loadingImageArr = [self getimages:loadImages];
    self.loadingView.timeInterval = loadingTimeInterVal;
    [self showLoading];
}
-(NSArray<UIImage*>*)getimages:(NSArray<NSString *>*)imageNames{
    NSMutableArray * images = [NSMutableArray array];
    for (NSString * imageName in imageNames) {
        [images addObject:[UIImage imageNamed:imageName]];
    }
    return images;
}
-(void)hideLoading{
    [self.loadingView removeFromSuperview];
}
@end
