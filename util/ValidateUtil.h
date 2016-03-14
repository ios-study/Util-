//
//  ValidateUtil.h
//  LfysPersonal
//
//  Created by tao on 15/10/28.
//  Copyright © 2015年 qinghui. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark - 验证的工具类
@interface ValidateUtil : NSObject

    //验证手机号码
    +(BOOL) validatePhoneNumber:(NSString *) phone;

    //邮箱
    +(BOOL) validateEmail:(NSString *)email;

@end
