//
//  UIPasteboard+LZHelper.m
//  GSCommonSDK
//
//  Created by maochao04 on 2017/6/13.
//  Copyright © 2017年 MaoChao Network Co. Ltd. All rights reserved.
//

#import "UIPasteboard+LZHelper.h"

@implementation UIPasteboard (LZHelper)

+ (void)copyText:(NSString*)text
{
    [[UIPasteboard generalPasteboard] setString:text];
}

+ (void)copyImage:(UIImage*)image
{
    [[UIPasteboard generalPasteboard] setImage:image];
}

+ (void)cancelCopied
{
    [UIPasteboard generalPasteboard].string = nil;
    [UIPasteboard generalPasteboard].strings = nil;
    [UIPasteboard generalPasteboard].image = nil;
    [UIPasteboard generalPasteboard].images = nil;
}

@end
