//
//  SqliteUtil.h
//  blrbl
//
//  Created by zjt on 16/3/7.
//  Copyright © 2016年 zjt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDatabase.h"

/*
 * sqlite工具类,crud
 */
@interface SqliteUtil : NSObject

    extern NSString* const CREATE_MSG_SQL;

    /*
     * 初始化sqlite,不存在则创建
     */
    +(FMDatabase *) initSqliteDb;


@end
