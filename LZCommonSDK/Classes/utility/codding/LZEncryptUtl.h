//
//  GSEncryptUtl.h
//  GSCoreCommon
//
//  Created by zhenwei on 14-1-22.
//  Copyright (c) 2014年 zhiguang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonCryptor.h>

@interface LZEncryptUtl : NSObject
/**
 *  加密解密字符串
 *
 *  @param sTextIn          字符串
 *  @param sKey             key
 *  @param encryptOrDecrypt 加密or解密
 *
 *  @return reslut
 */
+ (NSString *)doCipher:(NSString *)sTextIn key:(NSString *)sKey
			   context:(CCOperation)encryptOrDecrypt;

+ (NSString *)encodeBase64WithString:(NSString *)strData;

+ (NSData *)decodeBase64WithString:(NSString *)strBase64;

+ (NSString *)encodeBase64WithData:(NSData *)objData;

@end
