//
//  WFLoadingView.h
//  WFLoadingDemo
//
//  Created by Apple on 2018/10/8.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WFLoadingView : UIView
@property (nonatomic,strong) UIImageView * animationView;
@property (nonatomic,strong) NSArray * loadingImageArr;
@property (nonatomic,assign) NSTimeInterval timeInterval;

@end
