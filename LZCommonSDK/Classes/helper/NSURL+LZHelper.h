//
//  NSURL+LZHelper.h
//  MMC_Core
//
//  Created by maochao04 on 2017/2/27.
//  Copyright © 2017年 MaoChao Network Co. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURL (LZHelper)

/**
 *  请求参数
 *
 *  @return 请求参数字典
 */
- (NSDictionary*)parameterDictionary;

/**
 *  请求参数值
 *
 *  @param key 参数key
 *
 *  @return 参数值
 */
- (NSString*)parameterForKey:(NSString *)key;

@end

@interface NSDictionary (NSURL_LZHelper)

/**
 *  将NSDictionary转换成url 参数字符串
 *
 *  @return URL 参数字符串
 */
- (NSString *)parseToURLParameterString;

@end
