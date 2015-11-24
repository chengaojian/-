//
//  KCImage.m
//  触摸事件
//
//  Created by 陈高健 on 15/10/30.
//  Copyright © 2015年 陈高健. All rights reserved.
//

#import "KCImage.h"

@implementation KCImage

- (instancetype)initWithFrame:(CGRect)frame{
    if (self=[super initWithFrame:frame]) {
        UIImage *image=[UIImage imageNamed:@"header"];
        [self setBackgroundColor:[UIColor colorWithPatternImage:image]];
    }
    return self;
}

@end
