//
//  ShowEmptyViewController.m
//  WFLoadingDemo
//
//  Created by Apple on 2018/10/10.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "ShowEmptyViewController.h"
#import "UIView+WFLoading.h"
@interface ShowEmptyViewController ()

@end

@implementation ShowEmptyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    WFLoadingConfig * config = [[WFLoadingConfig alloc]init];

    config.emptyMsg = @"我是提示页";
    config.emptyBtnTitle = @"知道了";
    __weak typeof(self) weakSelf = self;
    
    config.action = ^{
        [weakSelf.view hideLoading];
    };
    
    [self.view showEmptyWithConfig:config];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
