//
//  GSFileUtil.m
//  MMC_Core
//
//  Created by maochao04 on 2017/2/28.
//  Copyright © 2017年 MaoChao Network Co. Ltd. All rights reserved.
//

#import "LZFileUtil.h"

@implementation LZFileUtil

- (NSString*)getFileNameWithSuffixByFilePath:(NSString*)filePath
{
    NSString *fileName = [filePath lastPathComponent];
    return fileName;
}

- (NSString*)getFileNameWithoutSuffixByFilePath:(NSString*)filePath
{
    NSString *fileName = [filePath stringByDeletingPathExtension];
    return fileName;
}

- (NSString*)getFileSuffixByFilePath:(NSString*)filePath
{
    NSString *suffix = [filePath pathExtension];
    return suffix;
}

@end
