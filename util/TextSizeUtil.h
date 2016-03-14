//
//  TextSizeUtil.h
//  LfysPersonal
//
//  Created by tao on 15/9/17.
//  Copyright (c) 2015年 qinghui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TextSizeUtil : NSObject

    /*
     * 计算文字的size
     * str：传入文字
     * textSize：字体大小
     * maxWidth：最大宽度
     * maxHeight：最大高度
     */
    +(CGRect) getRectByStr:(NSString *) str :(NSInteger ) textSize :(CGFloat) maxWidth :(CGFloat) maxHeight;



@end
