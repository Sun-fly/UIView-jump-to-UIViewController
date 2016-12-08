//
//  ViewController.m
//  UIView页面跳转到控制器
//
//  Created by 周亚-Sun on 2016/12/7.
//  Copyright © 2016年 zhouya. All rights reserved.
//

#define ZHOU_WIDTH self.view.frame.size.width
#define ZHOU_HEIGHT self.view.frame.size.height
#import "ViewController.h"
#import "ZHOUMyView.h"
@interface ViewController ()

@property(strong,nonatomic)ZHOUMyView *myView;

@end

@implementation ViewController

-(instancetype)init{
    if (self=[super init]) {
        self.title=@"视图一";
        [self.view addSubview:self.myView];
        _myView.delegate=self;//指定代理
    }
    return self;
}
-(ZHOUMyView *)myView{
    ZHOUMyView *myView=[[ZHOUMyView alloc]initWithFrame:CGRectMake( ZHOU_WIDTH/2-20, ZHOU_HEIGHT-65,162, 54)];
    myView.backgroundColor=[UIColor blackColor];
    myView.layer.cornerRadius=27;
    //调用块
    myView.clickTapBlock=^{
        OtherViewController *other=[[OtherViewController alloc]init];
        UINavigationController *naviGationController=[[UINavigationController alloc]initWithRootViewController:other];
        [self presentViewController:naviGationController animated:YES completion:nil];
    };
    _myView = myView;
    return _myView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //注册通知
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(openOtherViewController) name:@"push" object:nil];

}
#pragma mark---协议方法，||通知的方法
//跳转事件方法（代理，通知需要用到）
-(void)openOtherViewController{
    OtherViewController *other=[[OtherViewController alloc]init];
    UINavigationController *naviGationController=[[UINavigationController alloc]initWithRootViewController:other];
    [self presentViewController:naviGationController animated:YES completion:nil];
    
}
//内存警告
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    //移除通知
    [[NSNotificationCenter defaultCenter]removeObserver:self name:@"push" object:nil];
}
@end
