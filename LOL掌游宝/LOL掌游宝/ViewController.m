//
//  ViewController.m
//  LOL掌游宝
//
//  Created by qingyun on 15/11/25.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import "ViewController.h"
#import "moreViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [NSThread sleepForTimeInterval:3.0];
    
//    //设置背景颜色
//    self.view.backgroundColor = [UIColor whiteColor];
//    //更改导航栏的透明度
//    self.navigationController.navigationBar.translucent = NO;
//    //设置导航栏
//    [self setNavigationBar];
//    //设置工具栏
//    [self setToolBar];
//    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)setNavigationBar
{
    //设置导航栏的颜色
    self.navigationController.navigationBar.barTintColor = [UIColor grayColor];
    //设置左边的barButtonItem
    UIBarButtonItem *leftBarBtnItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"leftUserBTN"] style:UIBarButtonItemStylePlain target:self action:nil];
    leftBarBtnItem.tintColor = [UIColor whiteColor];
    self.navigationItem.leftBarButtonItem = leftBarBtnItem;
    //设置titleView
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 200, 44)];
    //文字居中
    label.textAlignment = NSTextAlignmentCenter;
    label.text = [NSString stringWithFormat:@"新闻资讯"];
    //添加titleView
    self.navigationItem.titleView = label;
    //设置右边的barButtonItem
    UIBarButtonItem *rightBarBtnItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"search"] style:UIBarButtonItemStylePlain target:self action:nil];
    rightBarBtnItem.tintColor = [UIColor whiteColor];
    
    self.navigationItem.rightBarButtonItem = rightBarBtnItem;
}

-(void)setToolBar
{
    //显示工具栏
    self.navigationController.toolbarHidden = NO;
    
    [self.navigationController.toolbar setBackgroundImage:[UIImage imageNamed:@"黑色背景"] forToolbarPosition:UIBarPositionBottom barMetrics:UIBarMetricsDefault];
    //创建工具栏内容
    UIBarButtonItem *FirBarBtnItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"tab_infomation_selected"] style:UIBarButtonItemStylePlain target:self action:@selector(setFirstPage:)];
    UIBarButtonItem *SecBarBtnItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"tab_video_normal"] style:UIBarButtonItemStylePlain target:self action:@selector(setSecondPage:)];
    UIBarButtonItem *ThiBarBtnItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"tab_heros_normal"] style:UIBarButtonItemStylePlain target:self action:@selector(setThirdPage:)];
    UIBarButtonItem *FouBarBtnItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"tab_community_normal"] style:UIBarButtonItemStylePlain target:self action:@selector(setFourPage:)];
    UIBarButtonItem *FivBarBtnItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"tab_more_normal"] style:UIBarButtonItemStylePlain target:self action:@selector(setFivePage:)];
    UIBarButtonItem *spaceItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    NSArray *items = @[spaceItem,FirBarBtnItem,spaceItem,SecBarBtnItem,spaceItem,ThiBarBtnItem,spaceItem,FouBarBtnItem,spaceItem,FivBarBtnItem];
    [self setToolbarItems:items animated:YES];
}

-(void)setFirstPage:(UIBarButtonItem *)first
{
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 200, 44)];
    //文字居中
    label.textAlignment = NSTextAlignmentCenter;
    label.text = [NSString stringWithFormat:@"新闻资讯"];
    //添加titleView
    self.navigationItem.titleView = label;

}
-(void)setSecondPage:(UIBarButtonItem *)second
{
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 180, 44)];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = [NSString stringWithFormat:@"视频"];
    self.navigationItem.titleView = label;
}

-(void)setThirdPage:(UIBarButtonItem *)third
{
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 180, 44)];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = [NSString stringWithFormat:@"英雄"];
    self.navigationItem.titleView = label;
}

-(void)setFourPage:(UIBarButtonItem *)four
{
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 180, 44)];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = [NSString stringWithFormat:@"社区"];
    self.navigationItem.titleView = label;
}

-(void)setFivePage:(UIBarButtonItem *)five
{
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 180, 44)];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = [NSString stringWithFormat:@"更多"];
    self.navigationItem.titleView = label;
    
    moreViewController *moreVC = [[moreViewController alloc]init];
    [self.navigationController pushViewController:moreVC animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
