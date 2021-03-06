//
//  GSVideoUtil.h
//  MMC_BabyLearn
//
//  Created by maochao04 on 2017/4/21.
//  Copyright © 2017年 MaoChao Network Co. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LZVideoUtil : NSObject

+ (NSTimeInterval)getVideoTotalTime:(NSURL*)videoUrl;

+ (UIImage*)getPreviewWithUrl:(NSURL*)videoUrl;

@end
