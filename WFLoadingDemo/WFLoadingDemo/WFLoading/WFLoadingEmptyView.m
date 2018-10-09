//
//  WFLoadingEmptyView.m
//  WFLoadingDemo
//
//  Created by Apple on 2018/10/9.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "WFLoadingEmptyView.h"
@interface WFLoadingEmptyView()

@property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UILabel *topLabel;
//@property (nonatomic,strong) UILabel *bottomLabel;
@property (nonatomic,strong) UIButton * bottomBtn;

@end
@implementation WFLoadingEmptyView
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setUpUI];
    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUpUI];
    }
    return self;
}
#pragma mark - UI搭建
/** UI搭建 */
- (void)setUpUI{
    self.backgroundColor = [UIColor whiteColor];
    
    //------- 图片 -------//
    self.imageView = [[UIImageView alloc]init];
    [self addSubview:self.imageView];
    
    //------- 内容描述 -------//
    self.topLabel = [[UILabel alloc]init];
    [self addSubview:self.topLabel];
    self.topLabel.textAlignment = NSTextAlignmentCenter;

    
    self.bottomBtn = [UIButton buttonWithType:UIButtonTypeCustom];

    [self addSubview:self.bottomBtn];
   

    self.bottomBtn.layer.masksToBounds = YES;
    
}
/** 设置图片和文字 */
- (void)setImage:(UIImage *)image topLabelText:(NSString *)topLabelText bottomBtn:(NSString *)bottomBtnText{
 
    self.topLabel.text = topLabelText;
    [self.bottomBtn setTitle:bottomBtnText forState:UIControlStateNormal];
    if (bottomBtnText.length==0) {
        self.bottomBtn.hidden = YES;
    }else{
        self.bottomBtn.hidden= NO;
    }
    self.imageView.image = image;
    CGSize imageSize = image.size;
    self.imageView.frame = CGRectMake((self.frame.size.width-imageSize.width)/2, (self.frame.size.height - imageSize.height)/2 - 50, imageSize.width, imageSize.height);
    CGSize topLabelSize =  [self.topLabel sizeThatFits:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX)];
    self.topLabel.frame = CGRectMake((self.frame.size.width - topLabelSize.width)/2, CGRectGetMaxY(self.imageView.frame)+5, topLabelSize.width, topLabelSize.height);
    CGSize bottomBtnSize = [self.bottomBtn sizeThatFits:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX)];
    self.bottomBtn.frame = CGRectMake((self.frame.size.width - bottomBtnSize.width)/2, CGRectGetMaxY(self.topLabel.frame)+5, bottomBtnSize.width, bottomBtnSize.height);
    self.bottomBtn.layer.cornerRadius =bottomBtnSize.height/2;

}
-(void)setConfig:(WFLoadingConfig *)config{

    [self setImage:[UIImage imageNamed:config.failImage] topLabelText:config.failMsg bottomBtn:config.failBtnTitle];
    self.topLabel.textColor = config.failMsgTextColor;
    self.topLabel.font = config.failMsgTextFont;
    [self.bottomBtn setBackgroundColor:config.failBtnblackGroundColor];
    self.bottomBtn.titleLabel.font = config.failBtnFont;
    [self.bottomBtn setTitleColor:config.failBtnTitleColor forState:UIControlStateNormal];
    [self.bottomBtn addTarget:config.btnDelegate action:config.sel forControlEvents:UIControlEventTouchUpInside];
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
