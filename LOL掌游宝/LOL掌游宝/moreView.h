//
//  moreView.h
//  LOL掌游宝
//
//  Created by qingyun on 15/11/25.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
@class QYmore;

@interface moreView : UIView

@property(nonatomic,strong) QYmore *model;
+(instancetype)moreView;
@end
