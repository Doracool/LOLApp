//
//  moreViewController.m
//  LOL掌游宝
//
//  Created by qingyun on 15/11/25.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import "moreViewController.h"
#import "QYmore.h"
#import "moreView.h"
@interface moreViewController ()

@property(nonatomic,strong)NSArray *more;
@end

@implementation moreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setNavigationBar];
    
    // Do any additional setup after loading the view.
    
    int totalColumn = 4;
    
    CGFloat moreVW = 93.f;
    CGFloat moreVH = 113.f;
    for (int i = 0; i < self.moreView.count ; i++) {
        moreView *moreV = [moreView moreView];
        [self.view addSubview:moreV];
        self.view.backgroundColor = [UIColor lightGrayColor];
        
        //设置水平方向上的间隔
        CGFloat marginX = ([UIScreen mainScreen].bounds.size.width - totalColumn*moreVW)/(totalColumn - 1);
        
        //设置竖直方向上的间隔
        CGFloat marginY = 1;
        //行数
        int row = i / totalColumn;
        //列数
        int column = i % totalColumn;
        
        CGFloat appX = column *  (marginX+ moreVW) ;
        CGFloat appY = marginY + row * (marginY + moreVH);
        
        //appView的大小
        moreV.frame = CGRectMake(appX, appY +44, moreVW, moreVH);
        
        
        //设置moreVIew的数据模型
        QYmore *more = self.moreView[i];
        moreV.model = more;
    }
}

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        UITabBarItem *tabBarItem = [[UITabBarItem alloc]initWithTitle:@"更多" image:[UIImage imageNamed:@"tab_more_normal"] selectedImage:[UIImage imageNamed:@"tab_more_selected"]];
        self.tabBarItem = tabBarItem;
    }
    return self;
}
-(void)back:(UIBarButtonItem *)leftback
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}
-(NSArray *)moreView
{
    //懒加载
    if (_more == nil) {
        //从路径中加载文件
        NSString *path = [[NSBundle mainBundle] pathForResource:@"more" ofType:@"plist"];
        
        NSArray *moreView = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *models = [NSMutableArray array];
        for (NSDictionary *dict in moreView) {
            QYmore *more = [QYmore moreViewWithDict:dict];
            [models addObject:more];
        }
        _more = models;
    }
    return _more;
}


-(void)setNavigationBar
{
    
    //设置左边的barBtnItem
    UIBarButtonItem *leftBarBtnItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"leftUserBTN"] style:UIBarButtonItemStylePlain target:self action:nil];
    
    self.navigationItem.leftBarButtonItem = leftBarBtnItem;
    
    //设置titleView
    UILabel *label = [[UILabel alloc]init];
    label.text = [NSString stringWithFormat:@"更多"];
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
