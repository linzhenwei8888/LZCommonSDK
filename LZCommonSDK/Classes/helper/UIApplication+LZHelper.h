//
//  UIApplication+LZHelper.h
//  MMC_Core
//
//  Created by maochao04 on 2017/2/27.
//  Copyright © 2017年 MaoChao Network Co. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (LZHelper)

+ (UIWindow*)appWindow; // 应用窗口
+ (UIViewController*)appRootViewController; // 应用跟视图控制器

+ (UIWindow*)keyWindow;
+ (UIViewController*)keyRootViewController;

+ (void)startNetworkActivity;
+ (void)finishNetworkActivity;

- (BOOL)isKeyboardVisible; // 是否显示键盘
- (CGRect)currentKeyboardFrame; // 键盘位置

- (void)setStatusBarBackgroundColor:(UIColor *)color; // 设置状态栏背景色

+ (BOOL)gotoAppSetting; //跳转到应用设置界面
+ (BOOL)checkIsAppInstalled:(NSString*)appScheme;
+ (BOOL)gotoApp:(NSString*)appScheme;

@end
