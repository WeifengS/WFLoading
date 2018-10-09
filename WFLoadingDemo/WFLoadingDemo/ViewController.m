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
//    self.view.backgroundColor = [UIColor redColor];
//    [self.view showLoading];
//
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [self.view stopAnimating];
//    });
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
- (IBAction)setMyLoading:(UIButton *)sender {
    WFLoadingConfig * config = [[WFLoadingConfig alloc]init];
    config.loadingMsg = @"我与众不同";
    config.loadingMsgTextColor = [UIColor purpleColor];
    config.imageTimeInterval = 3;
    [self.view showLoadingWithConfig:config];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.view hideLoading];
    });
    
}
- (IBAction)action1:(UIButton *)sender {
    WFLoadingDefaultConfig * config = [WFLoadingDefaultConfig shareDefaultConfig];
    config.loadingMsg = @"菊花转啊转";
    config.loadingMsgTextFont = [UIFont systemFontOfSize:11];
    config.loadingMsgTextColor = [UIColor redColor];
    config.emptyBtnTitle = @"消失";
    __weak typeof(self) weakSelf = self;
    config.action = ^{
        [weakSelf.view hideLoading];
    };
    
}
- (IBAction)action2:(UIButton *)sender {
    WFLoadingDefaultConfig * config = [WFLoadingDefaultConfig shareDefaultConfig];
    config.loadingMsg = @"无聊中zzzzzz";
    config.loadingMsgTextFont = [UIFont systemFontOfSize:14];
    config.loadingMsgTextColor = [UIColor blueColor];
    config.emptyBtnTitle = @"再见";
    __weak typeof(self) weakSelf = self;
    config.action = ^{
         [weakSelf.view hideLoading];
    };
    
}
- (IBAction)action3:(UIButton *)sender {
    WFLoadingDefaultConfig * config = [WFLoadingDefaultConfig shareDefaultConfig];
    config.loadingMsg = @"网络君正在请求，请稍后...";
    config.loadingMsgTextFont = [UIFont systemFontOfSize:16];
    config.loadingMsgTextColor = [UIColor yellowColor];
    config.emptyBtnTitle = @"哟呵，再转一次";
    __weak typeof(self) weakSelf = self;
    config.action = ^{
        NSLog(@"mdzz");
        [weakSelf.view showLoading];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [weakSelf.view hideLoading];
        });
    };
    
}
- (IBAction)loadingViewShow:(UIButton *)sender {
    [self.view showLoading];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.view hideLoading];
    });
}
- (IBAction)loadingEmptyShow:(UIButton *)sender {
    [self.view showLoading];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.view stopAnimating];
    });
}


@end
