//
//  GSAppUtil.h
//  MMC_Core
//
//  Created by maochao04 on 2017/2/24.
//  Copyright © 2017年 MaoChao Network Co. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LZAppUtil : NSObject

+ (NSString*)getAppIcon;

+ (NSString*)getAppVersion;

+ (NSString*)getBundleID;

+ (NSString*)getAppDisplayName;

+ (BOOL)isAppFirstLaunch;

+ (BOOL)isAppFirstLaunchForThisVersion;   // 是否是此版本第一次启动

@end
