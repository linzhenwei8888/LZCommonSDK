//
//  UIApplication+LZHelper.m
//  MMC_Core
//
//  Created by maochao04 on 2017/2/27.
//  Copyright © 2017年 MaoChao Network Co. Ltd. All rights reserved.
//

#import "UIApplication+LZHelper.h"

static NSInteger networkOperationCount;

@implementation UIApplication (LZHelper)

+ (UIWindow*)appWindow
{
    return [UIApplication sharedApplication].delegate.window;
}

+ (UIViewController*)appRootViewController
{
    return [UIApplication sharedApplication].delegate.window.rootViewController;
}

+ (UIWindow*)keyWindow
{
    return [[UIApplication sharedApplication]keyWindow];
}

+ (UIViewController*)keyRootViewController
{
    return [[UIApplication sharedApplication]keyWindow].rootViewController;
}

- (void)setStatusBarBackgroundColor:(UIColor *)color
{
    UIView *statusBar = [[[UIApplication sharedApplication] valueForKey:@"statusBarWindow"] valueForKey:@"statusBar"];
    
    if ([statusBar respondsToSelector:@selector(setBackgroundColor:)])
    {
        statusBar.backgroundColor = color;
    }
}

+ (void)startNetworkActivity
{
    networkOperationCount++;
    [[UIApplication sharedApplication] updateNetworkActivityIndicator];
}

+ (void)finishNetworkActivity
{
    networkOperationCount--;
    [[UIApplication sharedApplication] updateNetworkActivityIndicator];
}

- (void)updateNetworkActivityIndicator {
    [self setNetworkActivityIndicatorVisible:(networkOperationCount > 0 ? TRUE : FALSE)];
}

+ (BOOL)gotoAppSetting
{
    return [[UIApplication sharedApplication] openURL:[NSURL URLWithString:UIApplicationOpenSettingsURLString]];
}

+ (BOOL)checkIsAppInstalled:(NSString*)appScheme
{
    BOOL a = [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@", appScheme]]];
    return a;
}

+ (BOOL)gotoApp:(NSString*)appScheme
{
    BOOL a = [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@", appScheme]]];
    return a;
}

#pragma mark - keyboard

static CGRect gsKeyboardFrame = (CGRect){ (CGPoint){ 0.0f, 0.0f }, (CGSize){ 0.0f, 0.0f } };

- (CGRect)currentKeyboardFrame {
    return gsKeyboardFrame;
}

- (BOOL)isKeyboardVisible {
    return !CGRectEqualToRect(gsKeyboardFrame, CGRectZero);
}

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [NSNotificationCenter.defaultCenter addObserverForName:UIKeyboardDidShowNotification object:nil queue:nil usingBlock:^(NSNotification *note)
         {
             gsKeyboardFrame = [note.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
         }];
        [NSNotificationCenter.defaultCenter addObserverForName:UIKeyboardDidChangeFrameNotification object:nil queue:nil usingBlock:^(NSNotification *note)
         {
             gsKeyboardFrame = [note.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
         }];
        [NSNotificationCenter.defaultCenter addObserverForName:UIKeyboardDidHideNotification object:nil queue:nil usingBlock:^(NSNotification *note)
         {
             gsKeyboardFrame = CGRectZero;
         }];
    });
}

@end
