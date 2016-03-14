//
//  PromptUtil.m
//  lfys
//
//  Created by tao on 15/6/22.
//  Copyright (c) 2015年 qinghui. All rights reserved.
//

#import "PromptUtil.h"
#import "ColorUtil.h"
#import "AppDelegate.h"
#import "MBProgressHUD.h"
#import "iToast.h"
#import "DeviceUtil.h"

@implementation PromptUtil

    /*
     * 显示进度对话框
     */
    +(MBProgressHUD *) showProgressDialog:(NSString *) msg{
    
        MBProgressHUD *HUD = [[MBProgressHUD alloc] initWithView:[[UIApplication sharedApplication].delegate window]];
        
        [[[UIApplication sharedApplication].delegate window] addSubview:HUD];

        HUD.userInteractionEnabled = NO;
        [HUD show:YES];
        
        if(msg != nil && [msg length] > 0){
            HUD.labelText = msg;
        }
        
        return HUD;
        
    }

    /*
     * 关闭进度框
     */
    +(void) closeProgressDialog:(MBProgressHUD *) hud{
        [hud hide:YES];
    }

    /*
     * 模仿android,弹出土司提示
     */
    +(void) toast:(NSString *) text{
        iToast *toast = [iToast makeText:text];
        [toast setGravity:iToastGravityCenter];
        [toast setDuration:iToastDurationShort];
        [toast show];
    }


    /*
     * 显示普通提示对话框,点击就关闭
     */
    +(void) showCommonConfirmDialog:(UIViewController *) controller :(NSString *) title :(NSString *) msg{
        
        //ios8以上
        if([DeviceUtil isMoreThanIOS8]){
            
            UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:msg preferredStyle:UIAlertControllerStyleAlert];
            
            //添加取消按钮
            UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
            [alertController addAction:cancelAction];
            
            //推出
            [controller presentViewController:alertController animated:YES completion:nil];
            
        }
        //ios7
        else{
            
            UIAlertView *alertViewConfirm = [[UIAlertView alloc] initWithTitle:title            //标题
                                                                       message:msg                  //显示内容
                                                                      delegate:nil                     //委托，可以点击事件进行处理
                                                             cancelButtonTitle:@"确定"
                                                             otherButtonTitles:nil,         //,@"其他"
                                             nil];
            
            [alertViewConfirm setAlertViewStyle:UIAlertViewStyleDefault];  //控制样式效果图：
            [alertViewConfirm show];
            
        }
        
    }


@end