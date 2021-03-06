//
//  GSStringUtil.m
//  GSCoreCommon
//
//  Created by zhenwei on 13-12-16.
//  Copyright (c) 2013年 linzhenwei. All rights reserved.
//

#import "LZStringUtil.h"

@implementation LZStringUtil

+ (int)getStringRealLength:(NSString *)string
{
    NSStringEncoding enc = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000);
    NSData* da = [string dataUsingEncoding:enc];
    return (int)[da length];
}

+ (NSString*)parseAppIdFromItunesURL:(NSString*)itunesUrl
{
    NSArray* splits = [itunesUrl componentsSeparatedByString:@"/"]; //将字符串用/分割
    NSString* lastOfRequest = [splits objectAtIndex:[splits count]-1];
    
    //每个应用id格式都是类似：id639516529?mt=8
    NSArray* subSplits = [lastOfRequest componentsSeparatedByString:@"?"];
    NSString* appId = [subSplits objectAtIndex:0];
    if ([appId hasPrefix:@"id"]) {
        appId = [appId substringFromIndex:2];
    }
    
    return appId;
}

+ (BOOL)isEmptyString:(NSString*)string
{
    if (string == nil) {
        return YES;
    }
    
    if ([string isEqualToString:@""]) {
        return YES;
    }
    
    return NO;
}

@end
