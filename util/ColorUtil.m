//
//  ColorUtil.m
//  lfys
//
//  Created by tao on 15/6/15.
//  Copyright (c) 2015年 qinghui. All rights reserved.
//

#import "ColorUtil.h"

@implementation ColorUtil

/*
 * 单例方法
 */
+ (ColorUtil *) getInstance {
    if (!instance)
    {
        instance = [[super alloc] init];
    }
    return instance;
}

/*
 * 16进制颜色转UIColor
 */
+(UIColor *)getUIColorByHex:(NSString*) hexStr{
    unsigned int red,green,blue;
    NSRange range;
    range.length = 2;
    
    range.location = 0;
    [[NSScanner scannerWithString:[hexStr substringWithRange:range]]scanHexInt:&red];
    
    range.location = 2;
    [[NSScanner scannerWithString:[hexStr substringWithRange:range]]scanHexInt:&green];
    
    range.location = 4;
    [[NSScanner scannerWithString:[hexStr substringWithRange:range]]scanHexInt:&blue];
    
    return [UIColor colorWithRed:(float)(red/255.0f)green:(float)(green / 255.0f) blue:(float)(blue / 255.0f)alpha:1.0f];
}

/*
 * UIColor转UIImage
 */
+(UIImage *)getUIImageByUIColor:(UIColor*) color{
    
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    
    UIGraphicsBeginImageContext(rect.size);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    
    CGContextFillRect(context, rect);
    
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();

    return theImage;
}


@end
