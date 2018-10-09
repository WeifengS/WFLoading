//
//  WFLoadingAnmationView.m
//  WFLoadingDemo
//
//  Created by Apple on 2018/10/8.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "WFLoadingAnmationView.h"

@implementation WFLoadingAnmationView
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
-(void)setUpUI{
    self.loadingImageArr = [self images];
    self.timeInterval = 3;
    self.animationView = [[UIImageView alloc]initWithImage:self.loadingImageArr.firstObject];
    self.animationView.animationImages = self.loadingImageArr;
    self.animationView.contentMode = UIViewContentModeScaleAspectFill;
    self.msgLabel = [[UILabel alloc]init];
    [self addSubview:self.msgLabel];
    [self addSubview:self.animationView];
    CGPoint center = self.center;
    center.y = center.y - 50;
    self.animationView.center = center;
    
}
-(void)setLoadingImageArr:(NSArray *)loadingImageArr{
    _loadingImageArr = loadingImageArr;
    self.animationView.image = loadingImageArr.firstObject;
    [self.animationView sizeToFit];
    self.animationView.animationImages = _loadingImageArr;
    CGPoint center = self.center;
    center.y = center.y - 50;
    self.animationView.center = center;
}
-(void)wfSetImages:(NSArray<NSString *> *)images{
    self.loadingImageArr = [self getimages:images];
}
-(NSArray<UIImage*>*)getimages:(NSArray<NSString *>*)imageNames{
    NSMutableArray * images = [NSMutableArray array];
    for (NSString * imageName in imageNames) {
        [images addObject:[UIImage imageNamed:imageName]];
    }
    return images;
}

-(NSArray <UIImage*>*)images{
    NSMutableArray * images = [NSMutableArray array];
    for (int i = 1; i < 33; i++) {
        NSString * imageName = [NSString stringWithFormat:@"page_loading%u",i];
        UIImage * image = [UIImage imageNamed:imageName];
        [images addObject:image];
    }
    return images;
}

-(void)setConfig:(WFLoadingConfig *)config{
    if (config.images.count!=0) {
        self.loadingImageArr = config.images;
    }
 
    if (config. loadingMsgAnimtion) {
        self.msgLabel.text = config.loadingMsg;
        self.msgLabel.textColor = config.loadingMsgTextColor;
        self.msgLabel.font = config.loadingMsgTextFont;
        self.msgLabel.backgroundColor = [UIColor clearColor];
        self.msgLabel.textAlignment = NSTextAlignmentCenter;
        CGSize size =  [self.msgLabel sizeThatFits:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX)];
        self.msgLabel.frame = CGRectMake((self.bounds.size.width - size.width)/2, CGRectGetMaxY(self.animationView.frame)+5, size.width, size.height);
        [self addSubview:self.msgLabel];
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
