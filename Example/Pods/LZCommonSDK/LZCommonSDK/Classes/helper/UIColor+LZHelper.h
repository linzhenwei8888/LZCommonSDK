//
//  UIColor+LZHelper.h
//  GSCommonSDK
//
//  Created by maochao04 on 2017/6/14.
//  Copyright © 2017年 MaoChao Network Co. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (LZHelper)

+ (instancetype)colorFromHexString:(NSString *)hexString;

+ (UIColor *)colorWithHex:(UInt32)hex alpha:(CGFloat)alpha;

+ (UIColor *)randomColor;

/**
 *  反色
 *
 *  @return 反色
 */
- (UIColor *)invertedColor;

#pragma mark - Hex from Color

- (NSString *)hexString;

#pragma mark - RGBA from Color

- (CGFloat)red;

- (CGFloat)green;

- (CGFloat)blue;

- (CGFloat)alpha;

@end
