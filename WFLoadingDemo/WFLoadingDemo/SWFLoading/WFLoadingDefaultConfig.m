//
//  WFLoadingDefaultConfig.m
//  WFLoadingDemo
//
//  Created by Apple on 2018/10/9.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "WFLoadingDefaultConfig.h"

@implementation WFLoadingDefaultConfig
static WFLoadingDefaultConfig *_shareInstance;
#pragma mark - 设置默认值
-(void)setUpconfig{

    self.loadingMsg = @"加载中...";
    self.loadingMsgTextColor = [UIColor grayColor];
    self.loadingMsgTextFont  = [UIFont systemFontOfSize:14];
    self.imageTimeInterval = 2;

    self.emptyImage = @"load_failed_n";
    self.emptyMsg = @"网络连接失败，请检查您的网络";
    self.emptyMsgTextColor = [UIColor grayColor];
    self.emptyMsgTextFont  = [UIFont systemFontOfSize:14];

    self.emptyBtnTitle = @"再试一次";
    self.emptyBtnTitleColor = [UIColor whiteColor];
    self.emptyBtnblackGroundColor = [UIColor blueColor];
    self.emptyBtnFont = [UIFont systemFontOfSize:14];
}
#pragma mark - 单例
- (instancetype)init {
    //调用单例方法
    return [[self class] shareDefaultConfig];
}

+ (instancetype)shareDefaultConfig {
    if (!_shareInstance) {
        _shareInstance = [[WFLoadingDefaultConfig alloc] init];
        [_shareInstance setUpconfig];
        
    }    return _shareInstance;
    
}
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    if (!_shareInstance){
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            _shareInstance = [super allocWithZone:zone];
            
        });
        
    }
    return _shareInstance;
    
}
- (id)copyWithZone:(NSZone *)zone {
    return _shareInstance;
    
}
- (id)mutableCopyWithZone:(NSZone *)zone {
    return _shareInstance;
}
    


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
