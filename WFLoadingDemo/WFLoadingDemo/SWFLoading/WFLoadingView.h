//
//  WFLoadingView.h
//  WFLoadingDemo
//
//  Created by Apple on 2018/10/8.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WFLoadingConfig.h"
#import "WFLoadingAnmationView.h"
@interface WFLoadingView : UIView

@property (nonatomic,strong) id <WFLoadingConfigDelgate> config;
-(void)setUpConfig:(id<WFLoadingConfigDelgate>)config;

@property (nonatomic,strong) NSArray * loadingImageArr;
@property (nonatomic,assign) NSTimeInterval timeInterval;
/**开始动画*/
-(void)startAnimating;
/**结束动画*/
-(void)stopAnimating;
/**结束动画显示提示页*/
-(void)hideLoading;

@end
