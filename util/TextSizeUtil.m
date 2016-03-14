//
//  TextSizeUtil.m
//  LfysPersonal
//
//  Created by tao on 15/9/17.
//  Copyright (c) 2015年 qinghui. All rights reserved.
//

#import "TextSizeUtil.h"

@implementation TextSizeUtil

    +(CGRect) getRectByStr:(NSString *) str :(NSInteger ) textSize :(CGFloat) maxWidth :(CGFloat) maxHeight{
    
      return [str boundingRectWithSize:CGSizeMake(maxWidth, maxHeight)
                            options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesFontLeading  |NSStringDrawingUsesLineFragmentOrigin
                            attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:textSize]}
                            context:nil];
        
    }



@end
