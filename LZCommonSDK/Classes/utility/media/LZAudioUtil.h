//
//  GSAudioUtil.h
//  MMC_Core
//
//  Created by maochao04 on 2017/2/28.
//  Copyright © 2017年 MaoChao Network Co. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LZAudioUtil : NSObject

/**
 *  屏蔽静音键
 */
- (void)maskMuteKey;

- (void)playAudioWithPath:(NSString*)path;  // 播放声音

@end
