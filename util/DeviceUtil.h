//
//  DeviceUtil.h
//  blrbl
//
//  Created by zjt on 16/2/20.
//  Copyright © 2016年 zjt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DeviceUtil : NSObject

    //是否iphone4
    +(BOOL) isIphone4Or4s;

    //是否为ios8以上版本
    +(BOOL) isMoreThanIOS8;

    //是否为ios9以上版本
    +(BOOL) isMoreThanIOS9;


@end
