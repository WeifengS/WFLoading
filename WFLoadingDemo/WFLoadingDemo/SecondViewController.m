//
//  SecondViewController.m
//  WFLoadingDemo
//
//  Created by Apple on 2018/10/10.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "SecondViewController.h"
#import "UIView+WFLoading.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    WFLoadingConfig * config = [[WFLoadingConfig alloc]init];
    NSMutableArray * arr = [NSMutableArray array];
    for (int i = 1; i <= 32; i++) {
        NSString * imageName = [NSString stringWithFormat:@"page_loading%u",i];
        [arr addObject:imageName];
    }
    config.images = arr;
    config.loadingMsg = @"我是单独加载……";
    config.emptyMsg = @"独一无二的错误。。。";
    config.emptyBtnTitle = @"再见";
    __weak typeof(self) weakSelf = self;
    config.action = ^{
        [weakSelf.view hideLoading];
    };
    [self.view showLoadingWithConfig:config];
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
