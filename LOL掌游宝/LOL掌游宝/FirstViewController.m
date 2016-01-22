//
//  FirstViewController.m
//  LOL掌游宝
//
//  Created by qingyun on 15/11/30.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import "FirstViewController.h"
#import "LGtitleBarView.h"

@class UIImage;
@interface FirstViewController ()<LGtitleBarViewDelegate,UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) NSArray *titles;
@property (nonatomic, strong) LGtitleBarView *titleBar;
@end

#define KCollectionCellHeight 39
static NSString *const cellIdentifier = @"cells";
static NSString *QYID = @"cell";
@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [NSThread sleepForTimeInterval:1.0];
    LGtitleBarView *titleBar = [[LGtitleBarView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 45)];
    self.titles = @[@"最新",@"新闻",@"赛事",@"娱乐"];
    titleBar.titles = self.titles;
    titleBar.delegate = self;
    [self.view addSubview:titleBar];
    [self setNavigationBar];
    

    
    
    // Do any additional setup after loading the view.
}

-(NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:QYID forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:QYID];
        
        
    }
    return cell;
}
-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        UITabBarItem *tabBarItem = [[UITabBarItem alloc]initWithTitle:@"新闻资讯" image:[UIImage imageNamed:@"tab_infomation_normal"] selectedImage:[UIImage imageNamed:@"tab_infomation_seleted"]];
        self.tabBarItem = tabBarItem;
    }
    self.tabBarController.tabBar.translucent = NO;
    return self;
}

-(void)setNavigationBar
{
    //设置左边的barBtnItem
    UIBarButtonItem *leftBarBtnItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"leftUserBTN"] style:UIBarButtonItemStylePlain target:self action:nil];
    
    self.navigationItem.leftBarButtonItem = leftBarBtnItem;
    
    //设置titleView
    UILabel *label = [[UILabel alloc]init];
    label.text = [NSString stringWithFormat:@"新闻资讯"];
    self.navigationItem.title = label.text;
    
    //设置右边的barBtnItem
    UIBarButtonItem *rightBarBtnItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"search"] style:UIBarButtonItemStylePlain target:self action:nil];
    self.navigationItem.rightBarButtonItem = rightBarBtnItem;
    self.navigationController.navigationBar.translucent = YES;
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;
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
