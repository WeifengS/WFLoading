//
//  WFLoadingAnmationView.h
//  WFLoadingDemo
//
//  Created by Apple on 2018/10/8.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WFLoadingConfigDelgate.h"

@interface WFLoadingAnmationView : UIView
@property (nonatomic,strong) UIImageView * animationView;
@property (nonatomic,strong) UILabel * msgLabel;
@property (nonatomic,strong) NSArray <UIImage*>* loadingImageArr;
@property (nonatomic,assign) NSTimeInterval timeInterval;
@property (nonatomic,assign) NSTimeInterval msgTimeInterval;
-(void)wfSetImages:(NSArray<NSString*> *)images;
@property (nonatomic,strong) id <WFLoadingConfigDelgate> config;
-(void)actionAcmation;
-(void)stopAnimation;
@end
