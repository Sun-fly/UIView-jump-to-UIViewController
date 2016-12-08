//
//  OtherViewController.m
//  UIView页面跳转到控制器
//
//  Created by 周亚-Sun on 2016/12/7.
//  Copyright © 2016年 zhouya. All rights reserved.
//

#import "OtherViewController.h"

@interface OtherViewController ()

@end

@implementation OtherViewController
-(instancetype)init{
    self=[super init];
    if (self) {
        self.view.backgroundColor=[UIColor lightGrayColor];
        self.navigationItem.title=@"视图二";
        //导航栏返回按钮
        UIBarButtonItem *backItem=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(backClick:)];
        self.navigationItem.leftBarButtonItem=backItem;
        self.navigationItem.leftItemsSupplementBackButton=YES;
    }
    return self;
}
//导航按钮事件
-(void)backClick:(UIBarButtonItem *)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
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
