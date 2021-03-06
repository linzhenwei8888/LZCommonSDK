//
//  NSFileManager+LZHelper.h
//  GSCommonSDK
//
//  Created by maochao04 on 2017/6/23.
//  Copyright © 2017年 MaoChao Network Co. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

#define FilePathInDirectory(folderPath, fileName)         [folderPath stringByAppendingPathComponent:fileName]

@interface NSFileManager (LZHelper)

+ (NSString *)documentPath;

+ (NSString *)libraryPath;

+ (NSString *)cachePath;

+ (unsigned long long)sizeOfFolder:(NSString *)folderPath;

@end
