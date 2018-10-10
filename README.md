# WFLoading
WFLoading 是一个快捷loading界面
将WFLoading文件夹拖到项目中，使用的界面导入头文件#import "UIView+WFLoading.h"即可
提供了默认loading界面，后续会做完善和美化
提供了默认配置类 WFLoadingDefaultConfig 可通过属性，配置全局loading界面！
提供了单独配置类 WFLoadingConfig 可以单独配置界面loading页，空字段自动使用WFLoadingDefaultConfig属性！
提供了网络失败无数据提示界面 在loading出现后使用[self.view stopAnimating]可隐藏loading 展示提示页！
单独使用提示页可调用[self.view showEmptyWithConfig:config]展示
默认配置类WFLoadingDefaultConfig 可配置默认提示页，用来提示频率较高的提示，但是按钮点击事件必须 使用WFLoadingConfig传入，可使用快速初始化方法loadingWithBtnAction，传入事件，页面使用默认配置！
后续待添加 传入自定义view！
如果您有更好的意见或建议，欢迎留言评论！如果喜欢，欢迎star！
