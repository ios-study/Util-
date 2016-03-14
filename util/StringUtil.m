//
//  StringUtil.m
//  LfysPersonal
//
//  Created by tao on 15/9/21.
//  Copyright (c) 2015年 qinghui. All rights reserved.
//

#import "StringUtil.h"

@implementation StringUtil

    //是否为空
    +(BOOL) isEmpty:(NSString *) str{
        return str == nil || [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]].length == 0;
    }

    //是否不为空
    +(BOOL) isNotEmpty:(NSString *) str{
        return str != nil && [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]].length > 0;
    }


@end
