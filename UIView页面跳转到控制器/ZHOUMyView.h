//
//  ZHOUMyView.h
//  UIView页面跳转到控制器
//
//  Created by 周亚-Sun on 2016/12/7.
//  Copyright © 2016年 zhouya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZHOUPushProtocol.h"

typedef void (^pushBlock)();

@interface ZHOUMyView : UIView


@property(weak,nonatomic)id<ZHOUPushProtocol> delegate;//代理

@property(copy,nonatomic)pushBlock clickTapBlock;//块

@end
