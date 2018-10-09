//
//  WFLoadingConfig.h
//  WFLoadingDemo
//
//  Created by Apple on 2018/10/8.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WFLoadingConfig : NSObject
/**是否显示加载文本*/
@property (nonatomic,assign) BOOL  loadingMsgAnimtion;
/**loading加载文字*/
@property (nonatomic,  copy) NSString * loadingMsg;
/**loading加载文字颜色*/
@property (nonatomic,strong) UIColor * loadingMsgTextColor;
/**loading加载文字大小*/
@property (nonatomic,strong) UIFont * loadingMsgTextFont;
/**loading加载图片组*/
@property (nonatomic,strong) NSArray <UIImage*>* images;
/**动画时长 默认三秒*/
@property (nonatomic,assign) NSTimeInterval imageTimeInterval;
/**加载文本动画时长，0或不传则无动画*/
@property (nonatomic,assign) NSTimeInterval msgTimeInterval;


/**是否停止后是否显示请求失败提示页，若传YES，则网络失败需调用stop方法，之后属性除标明有默认外必填*/
@property (nonatomic,assign) BOOL failShow;
/**提示页图片*/
@property (nonatomic,  copy) NSString * failImage;
/**请求失败提示页提示文本 默认为空*/
@property (nonatomic,  copy) NSString * failMsg;
/**请求失败提示页文本颜色  默认灰色*/
@property (nonatomic,strong) UIColor * failMsgTextColor;
/**请求失败提示页文本字体大小 默认14*/
@property (nonatomic,strong) UIFont * failMsgTextFont;

/**提示页是否有按钮 默认为NO 若传YES，则之后属性除标明有默认外必填*/
@property (nonatomic,assign) BOOL showFailBtn;
/**按钮文字*/
@property (nonatomic,  copy) NSString * failBtnTitle;
/**按钮文字颜色  默认白色*/
@property (nonatomic,strong) UIColor * failBtnTitleColor;
/**按钮背景色    默认蓝色*/
@property (nonatomic,strong) UIColor * failBtnblackGroundColor;
/**按钮文字大小  默认14*/
@property (nonatomic,strong) UIFont * failBtnFont;
/**按钮响应代理 */
@property (nonatomic,  weak) id btnDelegate;
/**按钮响应方法*/
@property (nonatomic,assign) SEL  sel;
@end
