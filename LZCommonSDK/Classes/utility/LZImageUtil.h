//
//  GSImageUtil.h
//  MMC_Core
//
//  Created by maochao04 on 2017/2/27.
//  Copyright © 2017年 MaoChao Network Co. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LZImageUtil : NSObject

/**
 *  根据图片url获取图片尺寸
 *
 *  @param imageURL 图片URL(NSURL或NSString类型)
 *
 *  @return 图片尺寸
 */
+(CGSize)getImageSizeWithURL:(id)imageURL;

- (NSString *)contentTypeForImageData:(NSData *)data; //通过图片Data数据第一个字节 来获取图片扩展名

@end
