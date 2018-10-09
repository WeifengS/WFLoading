//
//  ViewController.m
//  WFLoadingDemo
//
//  Created by Apple on 2018/10/8.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "UIView+WFLoading.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    WFLoadingConfig * config = [[WFLoadingConfig alloc]init];
    config.loadingMsgTextFont = [UIFont systemFontOfSize:14];
    config.loadingMsgTextColor = [UIColor grayColor];
    config.loadingMsg = @"加载中";
    config.loadingMsgAnimtion = YES;
    config.failShow = YES;
    config.failImage = [UIImage imageNamed:@"page_loading15"];
    config.failMsg = @"网络错误";
    config.failMsgTextFont = [UIFont systemFontOfSize:14];
    config.showFailBtn = YES;
    config.failBtnTitle = @"点击重试";
    config.btnDelegate = self;
    config.sel = @selector(sel);
    self.view.loadingView.config = config;
    [self.view showLoading];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.view stopAnimating];
    });
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)sel{
    [self show];
}
-(void)show{
    [self.view showLoading];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.view stopAnimating];
    });
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
