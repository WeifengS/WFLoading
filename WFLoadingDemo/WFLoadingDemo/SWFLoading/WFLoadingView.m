//
//  WFLoadingView.m
//  WFLoadingDemo
//
//  Created by Apple on 2018/10/8.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "WFLoadingView.h"
#import "WFLoadingEmptyView.h"
#import "WFLoadingDefaultConfig.h"
@interface WFLoadingView()
@property (nonatomic,strong) WFLoadingAnmationView  * loadingAnmationView;
@property (nonatomic,strong) WFLoadingEmptyView     * emptyView ;
@end

@implementation WFLoadingView

-(WFLoadingAnmationView *)loadingAnmationView{
    if (!_loadingAnmationView) {
        _loadingAnmationView = [[WFLoadingAnmationView alloc]initWithFrame:self.bounds];
    }
    return _loadingAnmationView;
}
-(WFLoadingEmptyView *)emptyView{
    if (!_emptyView) {
        _emptyView = [[WFLoadingEmptyView alloc]initWithFrame:self.bounds];
    }
    return _emptyView;
}

-(void)startAnimating{
    if (!self.config) {
        [self setUpConfig:[WFLoadingDefaultConfig shareDefaultConfig]];
    }else{
        [self setUpConfig:self.config];
    }
    [self.emptyView removeFromSuperview];
    [self addSubview:self.loadingAnmationView];
    [self.loadingAnmationView actionAcmation];
}
-(void)stopAnimating{
    [self.loadingAnmationView stopAnimation];
}
-(void)showEmptyView{
    [self addSubview:self.emptyView];
}
-(void)hideLoading{
    [self.loadingAnmationView removeFromSuperview];
    
    [self showEmptyView];
}
-(void)setLoadingImageArr:(NSArray *)loadingImageArr{
    [self.loadingAnmationView wfSetImages:loadingImageArr];
}
-(void)setTimeInterval:(NSTimeInterval)timeInterval{
    self.loadingAnmationView.timeInterval = timeInterval;
}
-(void)setUpConfig:(id<WFLoadingConfigDelgate>)config{
    [self.loadingAnmationView setConfig:config];
    [self.emptyView setConfig: config];
}
//-(void)setConfig:(WFLoadingConfig *)config{
//    _config = config;
//    [self.loadingAnmationView setConfig:config];
//    [self.emptyView setConfig: config];
//
//}
/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end
