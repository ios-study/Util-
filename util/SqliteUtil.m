//
//  SqliteUtil.m
//  blrbl
//
//  Created by zjt on 16/3/7.
//  Copyright © 2016年 zjt. All rights reserved.
//

#import "SqliteUtil.h"

@implementation SqliteUtil

   //创建表sql
   NSString* const CREATE_MSG_SQL = @" create table if not exists tb_msg(pid varchar primary key,classifyKey varchar,title varchar,releaseTime varchar,id varchar,topicImage varchar,outChain varchar) ";

    /*
     * 初始化sqlite,不存在则创建
     */
    +(FMDatabase *) initSqliteDb{
        
        //1,获取数据库文件路径
        NSString *path=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
        path =[path stringByAppendingPathComponent:@"blrbl.sqlite"];
        
        FMDatabase *dataBase = [FMDatabase databaseWithPath:path];
        
        //2,打开数据库,不存在则创建
        [dataBase open];
        
        //3,创建表
        [dataBase executeUpdate:CREATE_MSG_SQL];
        
        //4,返回数据库
        return dataBase;
        
    }


@end
