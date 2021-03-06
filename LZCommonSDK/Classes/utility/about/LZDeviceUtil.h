//
//  GSDeviceUtil.h
//  GSCoreCommon
//
//  Created by zhenwei on 13-11-20.
//  Copyright (c) 2013年 linzhenwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LZDeviceUtil : NSObject

+ (NSUInteger)getDeviceSystemMajorVersion;  // 获取系统iOS主版本号
+ (NSString*)getDeviceSystemVersionString;  // 获取系统iOS版本号
+ (NSString*)getDeviceModel;    // 获取设备机型

/**
 *  获取屏幕分辨率
 *
 *  @return 屏幕分辨率 eg:320*480
 */
+ (NSString*)getDeviceScreenResolution;
+ (NSString*)getDeviceName; // 获取设备名称
+ (NSString *)getUserDeviceName;
+ (NSString *)getCarrierName;  //运营商
+ (NSString *)getCurrentBatteryLevel;
+ (NSString *)getWifiName;
+ (NSString*)getDeviceUUID; // 根据Keychain文件,获取设备UUID
+ (void)setDeviceInterfaceOrientation:(UIInterfaceOrientation)orientation;      // 设置屏幕方向

- (BOOL)isCameraAvailable;
- (BOOL)isRearCameraAvailable;
- (BOOL)isFrontCameraAvailable;
- (BOOL)isPhotoLibraryAvailable;
- (BOOL)isCameraSupportTakingPhotos;
- (BOOL)canUserPickVideosFromPhotoLibrary;
- (BOOL)canUserPickPhotosFromPhotoLibrary;

@end
