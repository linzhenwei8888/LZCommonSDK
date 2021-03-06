//
//  NSNumber+LZHelper.h
//  GSCommonSDK
//
//  Created by maochao04 on 2017/6/21.
//  Copyright © 2017年 MaoChao Network Co. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumber (LZHelper)

/**
 *  格式化数字字符串
 *
 *  @param formatStyle 格式
 *
 *  @return 格式化数字字符串
 */
- (NSString*)formatToStringWitStyle:(NSNumberFormatterStyle)formatStyle;

@end
