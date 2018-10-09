//
//  UIView+WFLoading.h
//  WFLoadingDemo
//
//  Created by Apple on 2018/10/8.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WFLoadingDefaultConfig.h"
#import "WFLoadingConfig.h"
@interface UIView (WFLoading)

/**动画图片*/
-(void)setWFLoadingImages:(NSArray <NSString*>*)images;
/**动画时间*/
-(void)setWFLoadingTimeInterva:(NSTimeInterval)timeInterval;
/**展示默认loading 动画时长3秒*/
-(void)showLoading;
/**loadingImageArr 图片名称数组*/
-(void)showLoadingWithLoadingImageArr:(NSArray <NSString*>*)loadImages loadingTimeInterVal:(NSTimeInterval)loadingTimeInterVal;
/**消失*/
-(void)hideLoading;
/**停止动画加载空白页*/
-(void)stopAnimating;
/**根据配置文件控制loading界面*/
-(void)showLoadingWithConfig:(WFLoadingConfig*)configModel;
/**传入自定义的动画界面*/

@end
