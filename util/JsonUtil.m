//
//  JsonUtil.m
//  lfys
//
//  Created by tao on 15/6/25.
//  Copyright (c) 2015年 qinghui. All rights reserved.
//

#import "JsonUtil.h"

@implementation JsonUtil

/*
 * 根据json字符串,返回对象,通常是NSDictionary、NSArray
 */
+(id) getJSONObject:(NSString *) jsonStr{
    
    return [NSJSONSerialization JSONObjectWithData:
                [jsonStr dataUsingEncoding:NSUTF8StringEncoding]
                 options:NSJSONReadingMutableLeaves error:nil];
    
}

@end