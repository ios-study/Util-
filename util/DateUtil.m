//
//  DateUtil.m
//  lfys
//
//  Created by tao on 15/6/28.
//  Copyright (c) 2015年 qinghui. All rights reserved.
//

#import "DateUtil.h"

@implementation DateUtil

//时间戳转字符串
+(NSString *) timestampToString:(long) timestamp{

    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    
    return [formatter stringFromDate:date];
}

//时间戳转字符串
+(NSString *) timestampToStringDate:(long) timestamp{
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    
    return [formatter stringFromDate:date];
    
}

//传入一个日期,得到一天的开始,时间戳
+(NSString *) getDateForDayStart:(NSDate *) date{
    
    //追加到00:00:00的字符串
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"] ;
    NSMutableString *strDate = [NSMutableString stringWithString:[formatter stringFromDate:date]];
    [strDate appendString:@" 00:00:00"];
    
    //再变成时间戳
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    return [NSString stringWithFormat:@"%d",(long) [[formatter dateFromString:strDate] timeIntervalSince1970]];
    
    
}

//传入一个日期,得到一天的结束
+(NSString *) getDateForDayEnd:(NSDate *) date{
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    NSMutableString *strDate = [NSMutableString stringWithString:[formatter stringFromDate:date]];
    [strDate appendString:@" 23:59:59"];
    
    //再变成时间戳
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    return [NSString stringWithFormat:@"%d",(long) [[formatter dateFromString:strDate] timeIntervalSince1970]];
}


//得到当前时间
+(NSString *) getDateStr:(NSDate *) date{
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"] ;
    
    return [formatter stringFromDate:date];
    
}

/*
 * 获取月、日
 */
+(NSString *) getMonthDayByDate:(NSDate *) date{
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"MM-dd"] ;
    
    return [formatter stringFromDate:date];
    
}

/*
 * 获取时、分
 */
+(NSString *) getHourMinuteByDate:(NSDate *) date{
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"HH:mm"] ;
    
    return [formatter stringFromDate:date];
    
}


/*
 * 获取当前星期
 */
+ (NSString*) weekdayStringFromDate:(NSDate *) inputDate {
    
    NSArray *weekdays = [NSArray arrayWithObjects: [NSNull null], @"周日", @"周一", @"周二", @"周三", @"周四", @"周五", @"周六", nil];
    
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    
    NSTimeZone *timeZone = [[NSTimeZone alloc] initWithName:@"Asia/Shanghai"];
    
    [calendar setTimeZone: timeZone];
    
    NSCalendarUnit calendarUnit = NSWeekdayCalendarUnit;
    
    NSDateComponents *theComponents = [calendar components:calendarUnit fromDate:inputDate];
    
    return [weekdays objectAtIndex:theComponents.weekday];
    
}



@end
