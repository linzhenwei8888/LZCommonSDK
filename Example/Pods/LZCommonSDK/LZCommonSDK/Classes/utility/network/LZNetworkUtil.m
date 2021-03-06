//
//  GSNetworkUtil.m
//  MMC_Core
//
//  Created by maochao04 on 2017/2/28.
//  Copyright © 2017年 MaoChao Network Co. Ltd. All rights reserved.
//

#import "LZNetworkUtil.h"
#include <sys/param.h>
#include <sys/mount.h>
#import "sys/utsname.h"
#include "sys/types.h"
#include "sys/sysctl.h"
#include <arpa/inet.h>
#include <ifaddrs.h>
#include <resolv.h>
#include <dns.h>
#import <sqlite3.h>
#import <resolv.h>
#include <sys/sysctl.h>
#import <sys/socket.h>
#import <sys/param.h>
#import <sys/stat.h>
#import <net/if.h>
#import <net/if_dl.h>
#import <mach/mach.h>
#import <mach/mach_host.h>
#import <mach/processor_info.h>

@implementation LZNetworkUtil

+ (NSString *)getDNSServers
{
    NSMutableString *addresses = [[NSMutableString alloc]initWithString:@""];
    res_state res = malloc(sizeof(struct __res_state));
    int result = res_ninit(res);
    if ( result == 0 )
    {
        // edit by zhenwei
//        for ( int i = 0; i < res->nscount; i++ )
//        {
//            NSString *s = [NSString stringWithUTF8String:inet_ntoa(res->nsaddr_list[i].sin_addr)];
//            [addresses appendFormat:@"%@",s];
//            break;
//        }
        if (res->nscount > 0) {
            NSString *s = [NSString stringWithUTF8String:inet_ntoa(res->nsaddr_list[0].sin_addr)];
            [addresses appendFormat:@"%@",s];
        }
        // end
    }
    return [NSString stringWithString:addresses];
}

+ (NSString*)getIPAderess
{
    NSString *address = @"error";
    struct ifaddrs *interfaces = NULL;
    struct ifaddrs *temp_addr = NULL;
    int success = 0;
    // retrieve the current interfaces - returns 0 on success
    success = getifaddrs(&interfaces);
    if (success == 0) {
        // Loop through linked list of interfaces
        temp_addr = interfaces;
        while(temp_addr != NULL) {
            if(temp_addr->ifa_addr->sa_family == AF_INET) {
                // Check if interface is en0 which is the wifi connection on the iPhone
                if([[NSString stringWithUTF8String:temp_addr->ifa_name] isEqualToString:@"en0"]) {
                    // Get NSString from C String
                    address = [NSString stringWithUTF8String:inet_ntoa(((struct sockaddr_in *)temp_addr->ifa_addr)->sin_addr)];
                }
            }
            temp_addr = temp_addr->ifa_next;
        }
    }
    // Free memory
    freeifaddrs(interfaces);
    return address;
}

+ (NSString *)getMacAddress
{
    int mib[6];
    size_t len;
    char *buf;
    unsigned char *ptr;
    struct if_msghdr *ifm;
    struct sockaddr_dl *sdl;
    
    mib[0] = CTL_NET;
    mib[1] = AF_ROUTE;
    mib[2] = 0;
    mib[3] = AF_LINK;
    mib[4] = NET_RT_IFLIST;
    
    if((mib[5] = if_nametoindex("en0")) == 0) {
        printf("Error: if_nametoindex error\n");
        return NULL;
    }
    
    if(sysctl(mib, 6, NULL, &len, NULL, 0) < 0) {
        printf("Error: sysctl, take 1\n");
        return NULL;
    }
    
    if((buf = malloc(len)) == NULL) {
        printf("Could not allocate memory. Rrror!\n");
        return NULL;
    }
    
    if(sysctl(mib, 6, buf, &len, NULL, 0) < 0) {
        printf("Error: sysctl, take 2");
        return NULL;
    }
    
    ifm = (struct if_msghdr *)buf;
    sdl = (struct sockaddr_dl *)(ifm + 1);
    ptr = (unsigned char *)LLADDR(sdl);
    NSString *outstring = [NSString stringWithFormat:@"%02X:%02X:%02X:%02X:%02X:%02X",
                           *ptr, *(ptr+1), *(ptr+2), *(ptr+3), *(ptr+4), *(ptr+5)];
    free(buf);
    
    return outstring;
}

@end
