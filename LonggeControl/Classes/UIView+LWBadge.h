//
//  UIView+LWBadge.h
//  LWEleven21
//
//  Created by LWEleven21 on 2018/3/27.
//  Copyright © 2018年 Eleven. All rights reserved.
//  给基于UIView的视图添加角标

#import <UIKit/UIKit.h>

@interface UIView (LWBadge)
/**
 *
 *  设置消息数，设置小于或等于0 、@"" 、nil 就隐藏
 *  只包含空格就显示红点 数值大于999显示为...
 */
@property (nonatomic,copy)NSString *badgePoint;
@end
