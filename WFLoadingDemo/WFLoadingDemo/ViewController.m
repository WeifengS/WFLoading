//
//  ViewController.m
//  WFLoadingDemo
//
//  Created by Apple on 2018/10/8.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "UIView+WFLoading.h"
#import "FirstViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)presentVC:(UIButton *)sender {
    FirstViewController * vc = [[FirstViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
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

    
    
}
- (IBAction)action2:(UIButton *)sender {
    WFLoadingDefaultConfig * config = [WFLoadingDefaultConfig shareDefaultConfig];
    config.loadingMsg = @"无聊中zzzzzz";
    config.loadingMsgTextFont = [UIFont systemFontOfSize:14];
    config.loadingMsgTextColor = [UIColor blueColor];
    config.emptyBtnTitle = @"再见";

    
    
}
- (IBAction)action3:(UIButton *)sender {
    WFLoadingDefaultConfig * config = [WFLoadingDefaultConfig shareDefaultConfig];
    config.loadingMsg = @"网络君正在请求，请稍后...";
    config.loadingMsgTextFont = [UIFont systemFontOfSize:16];
    config.loadingMsgTextColor = [UIColor yellowColor];
    config.emptyBtnTitle = @"哟呵，再转一次";

    
    
}
- (IBAction)loadingViewShow:(UIButton *)sender {
    [self.view showLoading];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.view hideLoading];
    });
}
- (IBAction)loadingEmptyShow:(UIButton *)sender {
    __weak typeof(self) weakSelf = self;
    [self.view showLoadingWithConfig:[WFLoadingConfig loadingWithBtnAction:^{
        [weakSelf.view hideLoading];
    }]];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.view stopAnimating];
    });
}


@end
