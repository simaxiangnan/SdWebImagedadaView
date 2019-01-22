//
//  UIView+LWBadge.m
//  LWEleven21
//
//  Created by LWEleven21 on 2018/3/27.
//  Copyright © 2018年 Eleven. All rights reserved.
//

#import "UIView+LWBadge.h"
#import <objc/runtime.h>

static char badgeValue_static;

static CGFloat badgeValue_height = 15;


@implementation UIView (LWBadge)
-(void)setBadgePoint:(NSString *)badgePoint{
    
    objc_setAssociatedObject(self, &badgeValue_static, badgePoint, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
    if (badgePoint == nil || [badgePoint isEqualToString:@""] || ([self isAllNumber:badgePoint] && badgePoint.integerValue <= 0)) {
        [self clearBadgePoint];
    }
    else{
        
        if ([self isEmpty:badgePoint]) {
            badgeValue_height = 8;
            // 创建红点
            UIButton *redBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, badgeValue_height, badgeValue_height)];
            redBtn.center = CGPointMake(self.frame.size.width, 0);
            redBtn.tag = 100;
            redBtn.layer.cornerRadius = badgeValue_height / 2;
            redBtn.layer.masksToBounds = YES;
            redBtn.backgroundColor = [UIColor redColor];
            [redBtn setTitle:@"" forState:UIControlStateNormal];
            [self addSubview:redBtn];
            [self bringSubviewToFront:redBtn];
        }else{
            CGRect rect = CGRectZero;
            if ([self isAllNumber:badgePoint] && badgePoint.intValue > 999) {
                badgePoint = @"99";
                rect = [badgePoint  boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:[UIFont smallSystemFontSize]]} context:nil];
                badgePoint = @"999";
            }else{
                rect = [badgePoint  boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:[UIFont smallSystemFontSize]]} context:nil];
            }
            
            // 创建红点
            UIButton *redBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, rect.size.width > badgeValue_height ? rect.size.width + 6 : badgeValue_height, badgeValue_height)];
            redBtn.center = CGPointMake(self.frame.size.width, 0);
            redBtn.tag = 100;
            redBtn.layer.cornerRadius = badgeValue_height / 2;
            redBtn.layer.masksToBounds = YES;
            redBtn.titleLabel.font = [UIFont systemFontOfSize:[UIFont smallSystemFontSize]];
            
            redBtn.backgroundColor = [UIColor redColor];
            [redBtn setTitle:badgePoint forState:UIControlStateNormal];
            [self addSubview:redBtn];
            [self bringSubviewToFront:redBtn];
        }
    }
    if (!self.layer.cornerRadius) {
        
    }
}
-(NSString *)badgePoint{
    NSString *badgePoint = objc_getAssociatedObject(self, &badgeValue_static);
    // 少于0 重置为0
    if (badgePoint.integerValue < 0) {
        return @"0";
    }
    else{
        return badgePoint;
    }
}
- (void)clearBadgePoint{
    for (UIView *view in self.subviews) {
        if ([view isKindOfClass:[UIButton class]] && view.tag == 100) {
            [view removeFromSuperview];
        }
    }
}
// 判断是否全是数字
- (BOOL)isAllNumber:(NSString *)text{
    unichar str;
    for (NSInteger index = 0; index < text.length; index ++) {
        str = [text characterAtIndex:index];
        if (isdigit(str)) {
            return YES;
        }
    }
    return NO;
}
// 判断是否全是空格
- (BOOL)isEmpty:(NSString *)str{
    if(!str) {
        return true;
    }else {
        NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        NSString *trimedString = [str stringByTrimmingCharactersInSet:set];
        if([trimedString length] == 0) {
            return true;
        }else {
            return false;
        }
    }
}
@end
