//
//  QYmore.h
//  LOL掌游宝
//
//  Created by qingyun on 15/11/25.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
@class UIImage;

#define KIconKey @"icon"
#define KNameKey @"name"
@interface QYmore : NSObject

@property(nonatomic,strong)UIImage *icon;
@property(nonatomic,strong)NSString *name;

+(instancetype)moreViewWithDict:(NSDictionary *)dict;
-(instancetype)initWithDict:(NSDictionary *)dict;
@end
