//
//  WFLoadingEmptyView.h
//  WFLoadingDemo
//
//  Created by Apple on 2018/10/9.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WFLoadingConfig.h"
#import "WFLoadingConfigDelgate.h"
@interface WFLoadingEmptyView : UIView
@property (nonatomic,strong) id<WFLoadingConfigDelgate> config;
- (void)setImage:(UIImage *)image topLabelText:(NSString *)topLabelText bottomBtn:(NSString *)bottomBtnText;

@end
