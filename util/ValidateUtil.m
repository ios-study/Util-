//
//  ValidateUtil.m
//  LfysPersonal
//
//  Created by tao on 15/10/28.
//  Copyright © 2015年 qinghui. All rights reserved.
//

#import "ValidateUtil.h"

//验证手机号码正则
#define REGEX_PHONE_NUM @"^((13[0-9])|(147)|(15[^4,\\D])|(17[0-9])|(18[0,5-9]))\\d{8}$"

@implementation ValidateUtil

    //验证手机号码
    +(BOOL) validatePhoneNumber:(NSString *) phone{
        NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", REGEX_PHONE_NUM];
        return [pred evaluateWithObject:phone];
    }

    //利用正则表达式验证
    +(BOOL) validateEmail:(NSString *)email {
        NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
        NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
        return [emailTest evaluateWithObject:email];
    }

@end
