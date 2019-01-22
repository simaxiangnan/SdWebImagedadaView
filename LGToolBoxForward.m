//
//  LGToolBoxForward.m
//  LongreIELTS
//
//  Created by 李建侯 on 2018/9/12.
//  Copyright © 2018年 LW. All rights reserved.
//

#import "LGToolBoxForward.h"
#import "XXFAWCS.h"
#import "LGDuckYaSiBookVC.h"
#import "LGImproveMarkVC.h"
#import "LGTestFindVC.h"
#import "LGDuckYaSiExaminationVC.h"
#import "LGDuckYaSiBlindVC.h"
#import "LGHotUniversityVC.h"
#import "LGUniversityIntroduceVC.h"
#import "LGHotUniversityDetailVC.h"
#import "LGImproveMarkDetailVC.h"

@implementation LGToolBoxForward

+ (void)pushDuckYaSiBlindVCParam:(id)param
                          fromVC:(UIViewController *)fromVC{
    LGDuckYaSiBlindVC * VC = [[LGDuckYaSiBlindVC alloc]init];
    [self pushForVC:fromVC toVC:VC];
}

+ (void)pushDuckYaSiBookVCParam:(id)param
                         fromVC:(UIViewController *)fromVC{
    LGDuckYaSiBookVC * VC = [[LGDuckYaSiBookVC alloc]init];
    [self pushForVC:fromVC toVC:VC];
}

+ (void)pushImproveMarkVCParam:(id)param
                        fromVC:(UIViewController *)fromVC{
    LGImproveMarkVC * VC = [[LGImproveMarkVC alloc]init];
    [self pushForVC:fromVC toVC:VC];
}

+ (void)pushImproveMarkDetailVCParam:(id)param
                              fromVC:(UIViewController *)fromVC{
    LGImproveMarkDetailVC * VC = [[LGImproveMarkDetailVC alloc]init];
    VC.model = param;
    [self pushForVC:fromVC toVC:VC];
}

+ (void)pushTestFindVCParam:(id)param
                     fromVC:(UIViewController *)fromVC{
    LGTestFindVC * VC = [[LGTestFindVC alloc]init];
    [self pushForVC:fromVC toVC:VC];
}

+ (void)pushDuckYaSiExaminationVCParam:(id)param
                                fromVC:(UIViewController *)fromVC{
    LGDuckYaSiExaminationVC * VC = [[LGDuckYaSiExaminationVC alloc]init];
    [self pushForVC:fromVC toVC:VC];
}

+ (void)pushHotUniversityVCParam:(id)param
                          fromVC:(UIViewController *)fromVC
                   callBackBlock:(CallActionSend)callBackBlock{
    LGHotUniversityVC * VC = [[LGHotUniversityVC alloc]init];
    VC.param = param;
    VC.callBackBlock = callBackBlock;
    [self pushForVC:fromVC toVC:VC];
}

+ (void)pushHotUniversityDetailVCParam:(id)param
                                fromVC:(UIViewController *)fromVC{
    LGHotUniversityDetailVC * VC = [[LGHotUniversityDetailVC alloc]init];
    VC.param = param;
    [self pushForVC:fromVC toVC:VC];
}

+ (void)pushUniversityIntroduceVCParam:(id)param
                                feature:(NSString *)feature
                                cover:(NSString *)cover
                                fromVC:(UIViewController *)fromVC{
    LGUniversityIntroduceVC * VC = [[LGUniversityIntroduceVC alloc]init];
    VC.major = param;
    VC.feature = feature;
    VC.cover = cover;
    [self pushForVC:fromVC toVC:VC];
}

+ (void)pushSearchVCParam:(id)param
                   fromVC:(UIViewController *)fromVC
                     toVC:(UIViewController *)toVC{
    [self pushForVC:fromVC toVC:toVC];
}
@end
