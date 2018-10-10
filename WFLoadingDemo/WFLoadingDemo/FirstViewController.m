//
//  FirstViewController.m
//  WFLoadingDemo
//
//  Created by Apple on 2018/10/9.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "FirstViewController.h"
#import "UIView+WFLoading.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    WFLoadingConfig * config = [[WFLoadingConfig alloc]init];

    config.loadingMsg = @"我是单独加载一号……";
    config.emptyMsg = @"警告警告";
    config.emptyBtnTitle = @"再来";
    __weak typeof(self) weakSelf = self;
    
    config.action = ^{
        [weakSelf.view showLoading];
    };
    [self.view showLoadingWithConfig:config];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [weakSelf.view stopAnimating];
    });
    
    // Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)dealloc{
    NSLog(@"--dealloc--");
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
