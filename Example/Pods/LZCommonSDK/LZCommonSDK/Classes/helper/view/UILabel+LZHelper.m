//
//  UILabel+LZHelper.m
//  MMC_Core
//
//  Created by maochao04 on 2017/2/27.
//  Copyright © 2017年 MaoChao Network Co. Ltd. All rights reserved.
//

#import "UILabel+LZHelper.h"

@implementation UILabel (LZHelper)


+ (instancetype)labelWithFrame:(CGRect)frame text:(NSString*)text textColor:(UIColor*)textColor font:(UIFont*)font
{
    UILabel* label = [[self alloc]initWithFrame:frame];
    label.text = text;
    if (textColor) {
        label.textColor = textColor;
    }
    if (font) {
        label.font = font;
    }
    label.backgroundColor = [UIColor clearColor];
    return label;
}

+ (instancetype)labelWithFrame:(CGRect)frame text:(NSString*)text textAliment:(NSTextAlignment)aliment textColor:(UIColor*)textColor font:(UIFont*)font
{
    UILabel* label = [[self alloc]initWithFrame:frame];
    label.text = text;
    label.textAlignment = aliment;
    if (textColor) {
        label.textColor = textColor;
    }
    if (font) {
        label.font = font;
    }
    label.backgroundColor = [UIColor clearColor];
    return label;
}

- (void)setText:(NSString*)text textColor:(UIColor*)textColor font:(UIFont*)font
{
    [self setText:text textAliment:NSTextAlignmentLeft textColor:textColor font:font];
}

- (void)setText:(NSString*)text textAliment:(NSTextAlignment)aliment textColor:(UIColor*)textColor font:(UIFont*)font
{
    self.text = text;
    self.textAlignment = aliment;
    if (textColor) {
        self.textColor = textColor;
    }
    if (font) {
        self.font = font;
    }
}

@end
