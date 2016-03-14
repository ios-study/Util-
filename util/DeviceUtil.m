//
//  DeviceUtil.m
//  blrbl
//
//  Created by zjt on 16/2/20.
//  Copyright © 2016年 zjt. All rights reserved.
//

#import "DeviceUtil.h"

@implementation DeviceUtil

     //是否iphone4
    +(BOOL) isIphone4Or4s{
        
        //得到屏幕尺寸
        CGFloat screenHeight = [[UIScreen mainScreen] bounds].size.height;
        CGFloat screenScale = [UIScreen mainScreen].scale;
        screenHeight = screenHeight * screenScale;
        
        //iphone4/4s
        if(screenHeight <= 960){
            return YES;
        }
        
        return NO;
        
    }

    //是否为ios8以上版本
    +(BOOL) isMoreThanIOS8{
        
        UIDevice *device = [UIDevice currentDevice];
        NSString *version = device.systemVersion;
        
        double versionNum = [version doubleValue];
        
        return versionNum >= 8.0;
        
    }

    //是否为ios9以上版本
    +(BOOL) isMoreThanIOS9{
        
        UIDevice *device = [UIDevice currentDevice];
        NSString *version = device.systemVersion;
        
        double versionNum = [version doubleValue];
        
        return versionNum >= 9.0;
        
    }


@end
