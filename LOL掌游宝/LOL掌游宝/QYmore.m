//
//  QYmore.m
//  LOL掌游宝
//
//  Created by qingyun on 15/11/25.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import "QYmore.h"
#import <UIKit/UIImage.h>
@implementation QYmore

-(instancetype)initWithDict:(NSDictionary *)dict{
    if (self == [super init]) {
        _icon = [UIImage imageNamed:dict[KIconKey]];
        _name = dict[KNameKey];
    }
    return self;
}
+(instancetype)moreViewWithDict:(NSDictionary *)dict{
    return [[QYmore alloc]initWithDict:dict];
}

@end
