//
//  HttpUtil.m
//  blrbl
//
//  Created by zjt on 16/2/20.
//  Copyright © 2016年 zjt. All rights reserved.
//

#import "HttpUtil.h"
#import "PromptUtil.h"
#import "Reachability.h"
#import "MJRefresh.h"
#import "AFURLSessionManager.h"

@implementation HttpUtil

/*
 * get请求：
 * action：请求动作
 * loadingMsg：加载框文字,可为nil
 * params：请求参数
 * callBack：请求成功回调
 */
+(void) doGet:(NSString *) action :(NSString *) loadingMsg :(NSMutableDictionary *) params :(RequestCallBack) callBack{
    
    if([self isConnectionAvailable]){
        
        //1,弹出加载框
        MBProgressHUD *hud = [PromptUtil showProgressDialog:loadingMsg];
        
        //2,封装url
        NSURL *URL = [NSURL URLWithString:[NSString stringWithFormat:@"%@%@",@"http://xxx",action]];
        
        //3,发送请求
        AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
        manager.requestSerializer = [AFJSONRequestSerializer serializer];
        manager.responseSerializer = [AFHTTPResponseSerializer serializer];
        
        [manager GET:URL.absoluteString  parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            [PromptUtil closeProgressDialog:hud];
            NSData *data = responseObject;
            NSString *jsonStr =  [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
            callBack(jsonStr);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            [PromptUtil closeProgressDialog:hud];
            [PromptUtil toast:@"请求失败,请重试！"];
        }];
        
    }
    
}

/*
 * post请求：
 * action：请求动作
 * loadingMsg：加载框文字,可为nil
 * params：请求参数
 * callBack：请求成功回调
 */
+(void) doPost:(NSString *) action :(NSString *) loadingMsg :(NSMutableDictionary *) params :(RequestCallBack) callBack{
    
    if([self isConnectionAvailable]){
        
        //1,弹出加载框
        MBProgressHUD *hud = [PromptUtil showProgressDialog:loadingMsg];
        
        //2,封装url
        NSURL *URL = [NSURL URLWithString:[NSString stringWithFormat:@"%@%@",@"xxx",action]];
        
        //3,发送请求
        AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
        manager.requestSerializer = [AFJSONRequestSerializer serializer];
        manager.responseSerializer = [AFHTTPResponseSerializer serializer];
        manager.requestSerializer.timeoutInterval = 10;
        
        [manager POST:URL.absoluteString parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            
            [PromptUtil closeProgressDialog:hud];
            
            NSData *data = responseObject;
            NSString *jsonStr =  [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
            callBack(jsonStr);
            
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            [PromptUtil closeProgressDialog:hud];
            [PromptUtil toast:@"请求失败,请重试！"];
        }];
        
    }
    
}

/*
 * 上传图片：
 * action：请求动作
 * loadingMsg：加载框文字,可为nil
 * params：请求参数
 * callBack：请求成功回调
 */
+(void) uploadImage:(NSString *) action :(NSString *) loadingMsg :(NSMutableDictionary *) params :(RequestCallBack) callBack{
    

    
}


/*
 * 判断网络连接
 */
+(BOOL) isConnectionAvailable{
    
    BOOL connected = YES;
    
    // 1.检测wifi状态
    Reachability *wifi = [Reachability reachabilityForLocalWiFi];
    
    // 2.检测手机是否能上网络(WIFI\3G\2.5G)
    Reachability *conn = [Reachability reachabilityForInternetConnection];
    
    // 3.判断网络状态,wifi
    if ([wifi currentReachabilityStatus] != NotReachable) {
        connected = YES;
    }
    else if ([conn currentReachabilityStatus] != NotReachable) { //使用手机自带网络进行上网
        connected = YES;
    }
    else { // 没有网络
        connected = NO;
        [PromptUtil toast:@"连接失败，请检查您的网络连接！"];
    }
    
    return connected;
}

@end