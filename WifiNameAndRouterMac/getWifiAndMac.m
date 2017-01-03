//
//  getWifiAndMac.m
//  获取Mac
//
//  Created by WangJiadong on 2017/1/3.
//  Copyright © 2017年 WangJiadong. All rights reserved.
//

#import "getWifiAndMac.h"
#import <SystemConfiguration/CaptiveNetwork.h>
#import <SystemConfiguration/SystemConfiguration.h>


@implementation getWifiAndMac

+ (NSString *)getWiFi{
    
    NSString *ssid = @"Not Found";
    
    CFArrayRef myArray =CNCopySupportedInterfaces();
    if (myArray != nil) {
        CFDictionaryRef myDict =CNCopyCurrentNetworkInfo(CFArrayGetValueAtIndex(myArray,0));
        if (myDict != nil) {
            NSDictionary *dict = (NSDictionary*)CFBridgingRelease(myDict);
            ssid = [dict valueForKey:@"SSID"];           //WiFi名称
               //Mac地址

        }
    }
    return ssid;
}
+(NSString *)getMac{

    NSString *macIp = @"Not Found";
    
    CFArrayRef myArray =CNCopySupportedInterfaces();
    if (myArray != nil) {
        CFDictionaryRef myDict =CNCopyCurrentNetworkInfo(CFArrayGetValueAtIndex(myArray,0));
        if (myDict != nil) {
            NSDictionary *dict = (NSDictionary*)CFBridgingRelease(myDict);
            
            macIp = [dict valueForKey:@"BSSID"];
        }
    
    }
    return macIp;
}
@end
