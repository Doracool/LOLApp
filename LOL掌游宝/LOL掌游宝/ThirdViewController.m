//
//  ThirdViewController.m
//  LOL掌游宝
//
//  Created by qingyun on 15/11/30.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setNavigationBar];
    // Do any additional setup after loading the view.
}


-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        UITabBarItem *tabBarItem = [[UITabBarItem alloc]initWithTitle:@"英雄搜索" image:[UIImage imageNamed:@"tab_heros_normal"] selectedImage:[UIImage imageNamed:@"tab_heros_selected"]];
        self.tabBarItem = tabBarItem;
    }
    return self;
}
-(void)setNavigationBar
{
    
    //设置左边的barBtnItem
    UIBarButtonItem *leftBarBtnItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"leftUserBTN"] style:UIBarButtonItemStylePlain target:self action:nil];
    
    self.navigationItem.leftBarButtonItem = leftBarBtnItem;
    
    //设置titleView
    UILabel *label = [[UILabel alloc]init];
    label.text = [NSString stringWithFormat:@"英雄搜索"];
    self.navigationItem.title = label.text;
    
    self.navigationController.navigationBar.translucent = YES;
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];

    
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
