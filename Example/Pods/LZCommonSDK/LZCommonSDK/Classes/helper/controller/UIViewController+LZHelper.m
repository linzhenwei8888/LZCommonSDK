//
//  UIViewController+LZHelper.m
//  MMC_Core
//
//  Created by maochao04 on 2017/2/28.
//  Copyright © 2017年 MaoChao Network Co. Ltd. All rights reserved.
//

#import "UIViewController+LZHelper.h"

@implementation UIViewController (LZHelper)

- (UIViewController*)rootViewController
{
    if (self.parentViewController) {
        return [self.parentViewController rootViewController];
    }
    else{
        return self;
    }
}

- (UIViewController*)lastPresentedViewController
{
    if (self.presentedViewController) {
        return [self.presentedViewController lastPresentedViewController];
    }
    else{
        return self;
    }
}

- (UIViewController*)lastPresentingViewController
{
    if (self.presentingViewController) {
        return [self.presentingViewController lastPresentingViewController];
    }
    else{
        return self;
    }
}

- (BOOL)isVisible
{
    return [self isViewLoaded] && self.view.window;
}

@end
