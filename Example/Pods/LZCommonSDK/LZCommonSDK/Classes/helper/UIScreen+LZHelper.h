//
//  UIScreen+LZHelper.h
//  MMC_Core
//
//  Created by maochao04 on 2017/2/21.
//  Copyright © 2017年 MaoChao Network Co. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScreen (LZHelper)

+ (CGSize)size;

+ (CGFloat)width;

+ (CGFloat)height;

+ (CGSize)orientationSize;      //根据状态栏判断当前屏幕大小

+ (CGFloat)orientationWidth;

+ (CGFloat)orientationHeight;

+ (CGSize)DPISize;  // 屏幕真实分辨率

@end
