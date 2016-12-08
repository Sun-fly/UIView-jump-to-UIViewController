//
//  ZHOUMyView.m
//  UIView页面跳转到控制器
//
//  Created by 周亚-Sun on 2016/12/7.
//  Copyright © 2016年 zhouya. All rights reserved.
//

#import "ZHOUMyView.h"
#import "OtherViewController.h"
@implementation ZHOUMyView

-(instancetype)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if (self) {
        [self addButton];
    }
    return self;
}

-(void)addButton{
    NSArray *imageArray= [NSArray arrayWithObjects:@"c.png",@"c.png",@"c.png", nil];
    for (int i=0; i<3; i++) {
        UIButton *btn=[[UIButton alloc]initWithFrame:CGRectMake(54*i, 0, 54, 54)];
        btn.tag=i;
        [btn addTarget:self action:@selector(clickTap:) forControlEvents:UIControlEventTouchUpInside];
        [btn setImage:[UIImage imageNamed:imageArray[i]] forState:UIControlStateNormal];
        [self addSubview:btn];
    }
}
-(void)clickTap:(UIButton *)sender{
    if (sender.tag ==0) {
        [self.delegate openOtherViewController];
        NSLog(@"代理");
    }
    if (sender.tag ==1) {
        
        [[NSNotificationCenter defaultCenter]postNotificationName:@"push" object:nil];
         NSLog(@"发送通知");
    }
    if (sender.tag ==2) {
        if (!_clickTapBlock) {
            return;
        }
        _clickTapBlock();
        
        NSLog(@"块");
    }
    
}
@end
