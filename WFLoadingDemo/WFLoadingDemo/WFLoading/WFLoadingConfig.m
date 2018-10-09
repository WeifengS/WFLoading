//
//  WFLoadingConfig.m
//  WFLoadingDemo
//
//  Created by Apple on 2018/10/8.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "WFLoadingConfig.h"

@implementation WFLoadingConfig


-(UIColor *)failMsgTextColor{
    if (!_failMsgTextColor) {
        return [UIColor grayColor];
    }else{
        return _failMsgTextColor;
    }
}

-(UIFont *)failMsgTextFont{
    if (!_failMsgTextFont) {
        return [UIFont systemFontOfSize:14.f];
    }else{
        return _failMsgTextFont;
    }
    
}

-(UIColor *)failBtnTitleColor{
    if (!_failBtnTitleColor) {
        return [UIColor whiteColor];
    }else{
        return _failBtnTitleColor;
    }
}

-(UIColor *)failBtnblackGroundColor{
    if (!_failBtnblackGroundColor) {
        return [UIColor blueColor];
    }else{
        return _failBtnblackGroundColor;
    }
    
}
/**按钮文字大小  默认16*/

-(UIFont *)failBtnFont{
    if (!_failBtnFont) {
        return [UIFont systemFontOfSize:14];
    }else{
        return _failBtnFont;
    }
}


@end
