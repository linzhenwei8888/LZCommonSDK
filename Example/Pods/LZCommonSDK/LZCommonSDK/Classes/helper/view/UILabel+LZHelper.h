//
//  UILabel+LZHelper.h
//  MMC_Core
//
//  Created by maochao04 on 2017/2/27.
//  Copyright © 2017年 MaoChao Network Co. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (LZHelper)

/**
 *  label声明
 *
 *  @param frame     位置
 *  @param text      文本
 *  @param textColor 颜色(传nil表示使用默认值, 下同)
 *  @param font      字体(传nil表示使用默认值, 下同)
 *
 *  @return 声明的label
 */
+ (instancetype)labelWithFrame:(CGRect)frame text:(NSString*)text textColor:(UIColor*)textColor font:(UIFont*)font;


/**
 *  label声明
 *
 *  @param frame     位置
 *  @param text      文本
 *  @param aliment   对齐方式
 *  @param textColor 颜色(传nil表示使用默认值, 下同)
 *  @param font      字体(传nil表示使用默认值, 下同)
 *
 *  @return 声明的label
 */
+ (instancetype)labelWithFrame:(CGRect)frame text:(NSString*)text textAliment:(NSTextAlignment)aliment textColor:(UIColor*)textColor font:(UIFont*)font;

- (void)setText:(NSString*)text textColor:(UIColor*)textColor font:(UIFont*)font;

- (void)setText:(NSString*)text textAliment:(NSTextAlignment)aliment textColor:(UIColor*)textColor font:(UIFont*)font;

@end
