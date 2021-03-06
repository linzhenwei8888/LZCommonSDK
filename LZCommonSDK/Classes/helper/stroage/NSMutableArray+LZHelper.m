//
//  NSMutableArray+LZHelper.m
//  MMC_Core
//
//  Created by maochao04 on 2017/2/28.
//  Copyright © 2017年 MaoChao Network Co. Ltd. All rights reserved.
//

#import "NSMutableArray+LZHelper.h"

@implementation NSMutableArray (LZHelper)

- (void)addObjectSafely:(id)anObject
{
    if (anObject) {
        [self addObject:anObject];
    }
}

- (void)addObjectWithNullObjectIfAddObjectNil:(id)anObject
{
    if (anObject) {
        [self addObject:anObject];
    }
    else{
        [self addObject:[NSNull null]];
    }
}

- (void)randomSorted
{
    for (int i = 0; i < self.count; ++i) {
        int n = (arc4random() % self.count - i) + i;
        [self exchangeObjectAtIndex:i withObjectAtIndex:n];
    }
}


@end
