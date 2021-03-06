//
//  UIImage+LZHelper.h
//  MMC_Core
//
//  Created by maochao04 on 2017/2/27.
//  Copyright © 2017年 MaoChao Network Co. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (LZHelper)

- (CGFloat)width;       // 图片宽度
- (CGFloat)height;

#pragma mark - 简便方法

/**
 *  返回纯色图片
 *
 *  @param color 颜色
 *  @param size  大小
 *
 *  @return 返回图片
 */
+ (UIImage *)imageWithColor:(UIColor*)color size:(CGSize)size;

/**
 *  .9图片
 *
 *  @param imageName 图片名称
 *  @param capInsets CapInsets
 *
 *  @return .9图片
 */
+ (UIImage*)imageName:(NSString*)imageName capInsets:(UIEdgeInsets)capInsets;

/**
 *  根据图片名获取图片内容
 *
 *  @param name 图片名
 *  @param type 图片后缀
 *
 *  @return 图片
 */
+ (UIImage*)imageNamed:(NSString*)name ofType:(NSString*)type;

/**
 *  根据图片路径获取图片内容
 *
 *  @param imagePath 图片路径
 *
 *  @return 图片
 */
+ (UIImage*)imageWithPath:(NSString*)imagePath;

/**
 *  动画图片
 *
 *  @param imageNames 图片名称数组
 *  @param duration   动画间隔
 *
 *  @return 动画图片
 */
+ (UIImage*)animateImageWithImageNames:(NSArray*)imageNames duration:(NSTimeInterval)duration;

#pragma mark - 实用方法

/**
 *  调整图片大小
 *
 *  @param newSize 新图片尺寸
 *
 *  @return 新图片
 */
- (UIImage *)resizeImageToSize:(CGSize)newSize;

/**
 *  剪切图片
 *
 *  @param rect 剪切位置
 *
 *  @return 剪切后的图片
 */
- (UIImage *)clipImageInRect:(CGRect)rect;

/**
 *  获取灰度图
 *
 *  @return 灰度图
 */
- (UIImage*)convertToGrayImage;

@end
