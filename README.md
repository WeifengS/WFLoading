# WFLoading
WFLoading 是一个快捷loading界面

###基本用法
将WFLoading文件夹拖到项目中，使用的界面导入头文件#import "UIView+WFLoading.h"即可

展示默认loading界面

    [self.view showLoading];


取消loading界面

	[self.view hideLoading];

展示提示页(需提前配置，默认展示网络失败提示页)
	
	[self.view stopAnimating]]


提供了默认配置类 WFLoadingDefaultConfig 可通过属性，配置全局默认loading界面！

    [WFLoadingDefaultConfig shareDefaultConfig];
    
 通过修改其属性可修改默认loading，具体属性如下

| 属性             	       | 作用                 | 
| :-------------	       | :-------------:     | 
| loadingMsg               | loading加载文字       | 
| loadingMsgTextColor      | loading加载文字颜色    | 
| loadingMsgTextFont       | loading加载文字       | 
| images     			       | loading加载图片组      | 
| imageTimeInterval        | 动画时长 默认三秒       |  
| emptyImage               | 提示页图片             | 
| emptyMsg                 | 请求失败提示页提示文本   | 
| emptyMsgTextColor        | 请求失败提示页文本颜色   | 
| emptyMsgTextFont         | 请求失败提示页文本字体   | 
| emptyBtnTitle   	       | 按钮文字               | 
| emptyBtnTitleColor       | 按钮文字颜色           | 
| emptyBtnblackGroundColor |按钮背景色              |
| emptyBtnFont             | 按钮文字               | 


####提供了单独配置类 WFLoadingConfig 可以在每个界面定制不同的loading  或者定制不同的提示页

WFLoadingConfig 的各项属性与 WFLoadingDefaultConfig 相同 未填写字段会自动取默认值（WFLoadingDefaultConfig中的值）
使用方法

    WFLoadingConfig * config = [[WFLoadingConfig alloc]init];
    
    config.loadingMsg = @"我是单独加载一号……";
    
    /**提示页文字（若需要展示空白页）*/
    config.emptyMsg = @"网络请求失败，请检查您的网络链接……";
    
    /**提示页按钮*/
    config.emptyBtnTitle = @"点击重试";
    
    /**按钮点击事件（只能单独配置，不能再全局中配置）*/
    config.action = ^{
       NSLog("点击");
    };
    
    /**展示默认loading动画*/
    [self.view showLoading];
    
    /**根据配置展示loading*/
    [self.view showLoadingWithConfig:config];
    
提示页按钮点击只能在各界面单独配置，不能再默认类中配置，若项目中用到的提示页相同，可在默认配置中配置提示页界面
在需要调用的界面单独配置点击事件或按钮文字

     WFLoadingConfig * config = [[WFLoadingConfig alloc]initWithAction:^{
        NSLog(@"点击")
    }];
或者

    WFLoadingConfig * config = [[WFLoadingConfig alloc]initWithBtnTitle:@"按钮title" emptyImage:@"图片名称" Action:^{
        NSLog(@"点击")
    }];
   
可以修改图片名称，按钮文字，和点击事件 更多配置可通过点语法修改属性，只影响当前界面


在网络请求完毕判断需要展示提示页出 直接调用
     
     [self.view stopAnimating];
可停止loading并展示提示页！

WFLoadingConfig 与 WFLoadingDefaultConfig 配合使用 可减少代码量

如果您有更好的意见或建议，欢迎留言评论！如果喜欢，欢迎star！
