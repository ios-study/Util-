//
//  HttpUtil.h
//  blrbl
//
//  Created by zjt on 16/2/20.
//  Copyright © 2016年 zjt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "AFHTTPSessionManager.h"
#import "Reachability.h"
#import "PromptUtil.h"
//#import "URLConfig.h"


//定义一个block作为回调函数,格式：typedef 返回值 (^名称) (参数)
typedef void (^RequestCallBack) (NSString * jsonStr);

/*
 * Http请求工具类
 */
@interface HttpUtil :NSObject

    /*
     * get请求：
     * action：请求动作
     * loadingMsg：加载框文字,可为nil
     * params：请求参数
     * callBack：请求成功回调
     */
    +(void) doGet:(NSString *) action :(NSString *) loadingMsg :(NSMutableDictionary *) params :(RequestCallBack) callBack;


    /*
     * post请求：
     * action：请求动作
     * loadingMsg：加载框文字,可为nil
     * params：请求参数
     * callBack：请求成功回调
     */
    +(void) doPost:(NSString *) action :(NSString *) loadingMsg :(NSMutableDictionary *) params :(RequestCallBack) callBack;


    /*
     * 上传图片：
     * action：请求动作
     * loadingMsg：加载框文字,可为nil
     * params：请求参数
     * callBack：请求成功回调
     */
    +(void) uploadImage:(NSString *) action :(NSString *) loadingMsg :(NSMutableDictionary *) params :(RequestCallBack) callBack;


    +(BOOL) isConnectionAvailable;

@end
