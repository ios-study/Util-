//
//  PromptUtil.h
//  lfys
//
//  Created by tao on 15/6/22.
//  Copyright (c) 2015年 qinghui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"

/*
 * 提示的工具类（例如对话框、进度框等）
 */
@interface PromptUtil : NSObject

    //显示进度对话框
    +(MBProgressHUD *) showProgressDialog:(NSString *) msg;

    //关闭进度对话框
    +(void) closeProgressDialog:(MBProgressHUD *) hub;

    //弹出土司提示
    +(void) toast:(NSString *) text;

@end