//
//  DateUtil.h
//  lfys
//
//  Created by tao on 15/6/28.
//  Copyright (c) 2015年 qinghui. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 * 日期转换工具类
 */
@interface DateUtil : NSObject

    //时间戳转字符串,
    +(NSString *) timestampToString:(long) timestamp;

    +(NSString *) getDateForDayStart:(NSDate *) date;

    +(NSString *) getDateForDayEnd:(NSDate *) date;

    +(NSString *) getDateStr:(NSDate *) date;

    +(NSString *) timestampToStringDate:(long) timestamp;



    /*
     * 获取月、日
     */
    +(NSString *) getMonthDayByDate:(NSDate *) date;

    /*
     * 获取时分
     */
    +(NSString *) getHourMinuteByDate:(NSDate *) date;

    /*
     * 获取当前星期
     */
    + (NSString*) weekdayStringFromDate:(NSDate*)inputDate;

@end