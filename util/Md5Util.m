//
//  Md5Util.m
//  lfys
//
//  Created by tao on 15/6/25.
//  Copyright (c) 2015年 qinghui. All rights reserved.
//

#import "Md5Util.h"
#import <CommonCrypto/CommonDigest.h>

@implementation Md5Util

+(NSString *) md5_32:(NSString *) str{
    
    const char *cStr = [str UTF8String];
    
    unsigned char result[16];
    
    CC_MD5(cStr, strlen(cStr), result); // This is the md5 call
    
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];

}

@end