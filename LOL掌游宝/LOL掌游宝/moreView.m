//
//  moreView.m
//  LOL掌游宝
//
//  Created by qingyun on 15/11/25.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import "moreView.h"
#import "QYmore.h"
@interface moreView()
@property (weak, nonatomic) IBOutlet UIImageView *icon;
@property (weak, nonatomic) IBOutlet UILabel *name;


@end
@implementation moreView

+(instancetype)moreView{
    return [[NSBundle mainBundle] loadNibNamed:@"MoreView" owner:nil options:nil][0];
}

-(void)setModel:(QYmore *)model
{
    _model = model;
    _icon.image = model.icon;
    _name.text = model.name;
}
@end
