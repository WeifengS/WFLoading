//
//  WFLoadingConfig.m
//  WFLoadingDemo
//
//  Created by Apple on 2018/10/8.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "WFLoadingConfig.h"
#import "WFLoadingDefaultConfig.h"
@implementation WFLoadingConfig

-(NSString *)loadingMsg{
    if (!_loadingMsg) {
        return [WFLoadingDefaultConfig shareDefaultConfig].loadingMsg;
    }else{
        return _loadingMsg;
    }
}

-(UIColor *)loadingMsgTextColor{
    if (!_loadingMsgTextColor) {
        return [WFLoadingDefaultConfig shareDefaultConfig].loadingMsgTextColor;
    }else{
        return _loadingMsgTextColor;
    }
}

-(UIFont *)loadingMsgTextFont{
    if (!_loadingMsgTextFont) {
        return [WFLoadingDefaultConfig shareDefaultConfig].loadingMsgTextFont;
    }else{
        return _loadingMsgTextFont;
    }
}

-(NSArray<NSString *> *)images{
    if (!_images) {
        return [WFLoadingDefaultConfig shareDefaultConfig].images;
    }else{
        return _images;
    }
}
-(NSTimeInterval)imageTimeInterval{
    if (!_imageTimeInterval) {
        return [WFLoadingDefaultConfig shareDefaultConfig].imageTimeInterval;
    }else{
        return _imageTimeInterval;
    }
}


-(NSString *)emptyImage{
    if (!_emptyImage) {
        return [WFLoadingDefaultConfig shareDefaultConfig].emptyImage;
    }else{
        return _emptyImage;
    }
}

-(NSString *)emptyMsg{
    if (!_emptyMsg) {
        return [WFLoadingDefaultConfig shareDefaultConfig].emptyMsg;
    }else{
        return _emptyMsg;
    }
}

-(UIColor *)emptyMsgTextColor{
    if (!_emptyMsgTextColor) {
        return [WFLoadingDefaultConfig shareDefaultConfig].emptyMsgTextColor;
    }else{
        return _emptyMsgTextColor;
    }
}

-(UIFont *)emptyMsgTextFont{
    if (!_emptyMsgTextFont) {
        return [WFLoadingDefaultConfig shareDefaultConfig].emptyMsgTextFont;
        
    }else{
        return _emptyMsgTextFont;
    }
}



-(NSString *)emptyBtnTitle{
    if (!_emptyBtnTitle) {
        return [WFLoadingDefaultConfig shareDefaultConfig].emptyBtnTitle;
    }else{
        return _emptyBtnTitle;
    }
}

-(UIColor *)emptyBtnTitleColor{
    if (!_emptyBtnTitleColor) {
        return [WFLoadingDefaultConfig shareDefaultConfig].emptyBtnTitleColor;
    }else{
        return _emptyBtnTitleColor;
    }
}

-(UIColor *)emptyBtnblackGroundColor{
    if (!_emptyBtnblackGroundColor) {
        return [WFLoadingDefaultConfig shareDefaultConfig].emptyBtnblackGroundColor;
    }else{
        return _emptyBtnblackGroundColor;
    }
}

-(UIFont *)emptyBtnFont{
    if (!_emptyBtnFont) {
        return [WFLoadingDefaultConfig shareDefaultConfig].emptyBtnFont;
    }else{
        return _emptyBtnFont;
    }
}


+(WFLoadingConfig*)loadingWithBtnAction:(BtnAction)action{
    return [[WFLoadingConfig alloc]initWithAction:action];
}
-(instancetype)initWithAction:(BtnAction)action{
    WFLoadingConfig * config = [[WFLoadingConfig alloc]init];
    config.action = action;
    return config;
}
+(WFLoadingConfig*)loadingWithBtnTitle:(NSString*)title emptyImage:(NSString*)emptyImage Action:(BtnAction)action{
    
    return [[WFLoadingConfig alloc]initWithBtnTitle:title emptyImage:emptyImage Action:action];
}
-(instancetype)initWithBtnTitle:(NSString*)title emptyImage:(NSString*)emptyImage Action:(BtnAction)action{
    WFLoadingConfig * config = [WFLoadingConfig loadingWithBtnAction:action];
    config.emptyBtnTitle = title;
    config.emptyImage = emptyImage;
    return config;
}


@end
