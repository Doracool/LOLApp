//
//  QYTabBarViewController.m
//  LOL掌游宝
//
//  Created by qingyun on 15/11/30.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import "QYTabBarViewController.h"

@interface QYTabBarViewController ()
@property (nonatomic,strong)UIView *underView;
@end

@implementation QYTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTabBar];
    // Do any additional setup after loading the view.
}


-(void)setTabBar
{
    
//    UITabBar *tabBar = tb.tabBar;
//    UITabBarItem *tabBarItem1 = [tabBar.items objectAtIndex:0];
//    UITabBarItem *tabBarItem2 = [tabBar.items objectAtIndex:1];
//    tabBarItem1.title = @"新闻资讯";
//    tabBarItem2.title = @"视频";
//    
//    //设置点击前后的图片
//    [tabBarItem1 setFinishedSelectedImage:[UIImage imageNamed:@"tab_infomation_selected"] withFinishedUnselectedImage:[UIImage imageNamed:@"tab_infomation_normal"]];
//    
//    [tabBarItem2 setFinishedSelectedImage:[UIImage imageNamed:@"tab_video_selected"] withFinishedUnselectedImage:[UIImage imageNamed:@"tab_video_normal"]];
//    UINavigationController *navSecond = [[UINavigationController alloc]initWithRootViewController:c2];
//    [tb addChildViewController:navSecond];
    
    
    //设置背景图片
    UIImage *tabBarBackground = [UIImage imageNamed:@"黑色背景"];
    [[UITabBar appearance] setBackgroundImage:tabBarBackground];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
