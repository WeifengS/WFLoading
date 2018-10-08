//
//  UIView+WFLoading.h
//  WFLoadingDemo
//
//  Created by Apple on 2018/10/8.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WFLoadingView.h"
@interface UIView (WFLoading)

@property (nonatomic,strong,readonly)WFLoadingView * loadingView;

-(void)setWFImages:(NSArray <NSString*>*)images;

-(void)setWFLoadingTimeInterva:(NSTimeInterval)timeInterval;
/**展示默认loading 动画时长3秒*/
-(void)showLoading;
/**loadingImageArr 图片名称数组*/
-(void)showLoadingWithLoadingImageArr:(NSArray <NSString*>*)loadImages loadingTimeInterVal:(NSTimeInterval)loadingTimeInterVal;

-(void)hideLoading;
@end
