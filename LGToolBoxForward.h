//
//  LGToolBoxForward.h
//  LongreIELTS
//
//  Created by 李建侯 on 2018/9/12.
//  Copyright © 2018年 LW. All rights reserved.
//

#import "LGBaseForward.h"

@interface LGToolBoxForward : LGBaseForward

/**
 跳转到了解雅思界面
 @param param 参数
 @param fromVC 来自哪个页面
 */
+ (void)pushDuckYaSiBlindVCParam:(id)param
                          fromVC:(UIViewController *)fromVC;

/**
 跳转到雅思白皮书界面
 @param param 参数
 @param fromVC 来自哪个页面
 */
+ (void)pushDuckYaSiBookVCParam:(id)param
                         fromVC:(UIViewController *)fromVC;

/**
 跳转到提分攻略界面
 @param param 参数
 @param fromVC 来自哪个页面
 */
+ (void)pushImproveMarkVCParam:(id)param
                        fromVC:(UIViewController *)fromVC;

/**
 跳转到提分攻略详情界面
 @param param 参数
 @param fromVC 来自哪个页面
 */
+ (void)pushImproveMarkDetailVCParam:(id)param
                              fromVC:(UIViewController *)fromVC;

/**
 跳转到考点查询界面
 @param param 参数
 @param fromVC 来自哪个页面
 */
+ (void)pushTestFindVCParam:(id)param
                     fromVC:(UIViewController *)fromVC;

/**
 跳转到考勤快讯界面
 @param param 参数
 @param fromVC 来自哪个页面
 */
+ (void)pushDuckYaSiExaminationVCParam:(id)param
                                fromVC:(UIViewController *)fromVC;


/**
 跳转到热门学院界面
 @param param 参数
 @param fromVC 来自哪个页面
 */
+ (void)pushHotUniversityVCParam:(id)param
                                fromVC:(UIViewController *)fromVC
                         callBackBlock:(CallActionSend)callBackBlock;

/**
 跳转到热门学院详情界面
 @param param 参数
 @param fromVC 来自哪个页面
 */
+ (void)pushHotUniversityDetailVCParam:(id)param
                                fromVC:(UIViewController *)fromVC;

/**
 跳转到热门学院介绍界面
 @param param 参数
 @param fromVC 来自哪个页面
 */
+ (void)pushUniversityIntroduceVCParam:(id)param
                               feature:(NSString *)feature
                                 cover:(NSString *)cover
                                fromVC:(UIViewController *)fromVC;

/**
 跳转到热门学院介绍界面
 @param param 参数
 @param fromVC 来自哪个页面
 */
+ (void)pushSearchVCParam:(id)param
                                fromVC:(UIViewController *)fromVC
                                  toVC:(UIViewController *)toVC;

@end
