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
#import "SecondViewController.h"
#import "DefaultViewController.h"
#import "ShowEmptyViewController.h"
#import "UIView+Toast.h"

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

- (IBAction)showEmptyVC:(UIButton *)sender {
    [self.navigationController pushViewController:[ShowEmptyViewController new] animated:YES];
}

- (IBAction)showDefultLoading:(UIButton *)sender {
    [self.navigationController pushViewController:[DefaultViewController new] animated:YES];
    
    
}
- (IBAction)showCustom1:(UIButton *)sender {
    [self.navigationController pushViewController:[FirstViewController new] animated:YES];
}
- (IBAction)showCustom2:(UIButton *)sender {
    [self.navigationController pushViewController:[SecondViewController new] animated:YES];
}
- (IBAction)action1:(UIButton *)sender {
    WFLoadingDefaultConfig * config = [WFLoadingDefaultConfig shareDefaultConfig];
    config.loadingMsg = @"菊花转啊转";
    config.loadingMsgTextFont = [UIFont systemFontOfSize:11];
    config.loadingMsgTextColor = [UIColor redColor];
    config.emptyBtnTitle = @"消失";
    [self.view makeToast:@"设置成功"];
    
    
}
- (IBAction)action2:(UIButton *)sender {
    WFLoadingDefaultConfig * config = [WFLoadingDefaultConfig shareDefaultConfig];
    config.loadingMsg = @"无聊中zzzzzz";
    config.loadingMsgTextFont = [UIFont systemFontOfSize:14];
    config.loadingMsgTextColor = [UIColor blueColor];
    config.emptyBtnTitle = @"再见";
    [self.view makeToast:@"设置成功"];
    
    
}
- (IBAction)action3:(UIButton *)sender {
    WFLoadingDefaultConfig * config = [WFLoadingDefaultConfig shareDefaultConfig];
    config.loadingMsg = @"网络君正在请求，请稍后...";
    config.loadingMsgTextFont = [UIFont systemFontOfSize:16];
    config.loadingMsgTextColor = [UIColor yellowColor];
    config.emptyBtnTitle = @"哟呵，再转一次";
    [self.view makeToast:@"设置成功"];
}



@end
