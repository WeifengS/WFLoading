//
//  WFLoadingView.m
//  WFLoadingDemo
//
//  Created by Apple on 2018/10/8.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "WFLoadingView.h"

@implementation WFLoadingView
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
        self.backgroundColor = [UIColor blueColor];
        
        [self setUpUI];
    }
    return self;
}
-(void)setUpUI{
    self.loadingImageArr = [self images];
    self.timeInterval = 3;
    self.animationView = [[UIImageView alloc]initWithImage:self.loadingImageArr.firstObject];
    self.animationView.animationImages = self.loadingImageArr;
    self.animationView.backgroundColor = [UIColor redColor];
    self.animationView.contentMode = UIViewContentModeScaleAspectFill;
    [self addSubview:self.animationView];
}
-(void)setLoadingImageArr:(NSArray *)loadingImageArr{
    _loadingImageArr = loadingImageArr;
    self.animationView.image = loadingImageArr.firstObject;
    [self.animationView sizeToFit];
    self.animationView.animationImages = _loadingImageArr;
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
-(void)layoutSubviews{
    [super layoutSubviews];
    self.animationView.center = self.center;
    
}
/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end
