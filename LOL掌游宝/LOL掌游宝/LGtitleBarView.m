//
//  LGtitleBarView.m
//  titleScroll
//
//  Created by jamy on 15/7/6.
//  Copyright (c) 2015年 jamy. All rights reserved.
//

#import "LGtitleBarView.h"
#import "LGcollectionCell.h"

#define KCollectionCellHeight 39
#define LCollectionCellMargin 20


static NSString *const cellIdentifier = @"cells";

@interface LGtitleBarView ()<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>
@property (nonatomic, strong) UICollectionView *collection;
@property (nonatomic, strong) UICollectionViewFlowLayout *flowLayout;
@property (nonatomic, strong) UIView *bottomView;
@end

@implementation LGtitleBarView

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setUp];
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self setUp];
    }
    return self;
}

- (void)setUp
{
    self.backgroundColor = [UIColor groupTableViewBackgroundColor];
    //流布局
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    
    //设置行间距
    flowLayout.minimumLineSpacing = 2;
    //设置item之间的间距
    flowLayout.minimumInteritemSpacing = 2;
    //设置滚动方向为水平方向
    flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    //初始化CGRectZero默认为（0,0,0,0） 但是cell被tableView调用的时候会等于tableView的宽
    UICollectionView *collection = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:flowLayout];
    //设置数据源和代理
    collection.dataSource = self;
    collection.delegate = self;
    //设置滚动
    collection.scrollEnabled = YES;
    //设置回弹
    collection.bounces = NO;
    //设置背景颜色
    collection.backgroundColor = [UIColor clearColor];
    //水平滚动条不显示
    collection.showsHorizontalScrollIndicator = NO;
    //垂直滚动条不显示
    collection.showsVerticalScrollIndicator = NO;
    
    //注册cellection
    [collection registerClass:[LGcollectionCell class] forCellWithReuseIdentifier:cellIdentifier];
    //添加到视图shang
    [self addSubview:collection];
    self.flowLayout = flowLayout;
    self.collection = collection;
    
    //创建底部的视图即横线效果
    UIView *bottomView = [[UIView alloc] init];
    bottomView.backgroundColor = [UIColor redColor];
    [self.collection addSubview:bottomView];
    self.bottomView = bottomView;
}

//
-(void)setTitles:(NSArray *)titles
{
    _titles = titles;
    self.collection.frame = self.bounds;
    self.bottomView.frame = CGRectMake(2, KCollectionCellHeight - 2, [self sizeForTitle:self.titles[0]] - 4, 2);
    [self.collection reloadData];
}


- (CGFloat)sizeForTitle:(NSString *)title
{
    return [title sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]}].width+LCollectionCellMargin;
}

//定义每个Item的大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat width = [self sizeForTitle:self.titles[indexPath.row]];
    return CGSizeMake(width, KCollectionCellHeight);
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.titles.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    LGcollectionCell *cell = (LGcollectionCell *)[collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    [cell setTitleName:self.titles[indexPath.row]];
    
    return cell;
}

//UICollectionView被选中时调用的方法
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    LGcollectionCell *cell = (LGcollectionCell *)[collectionView cellForItemAtIndexPath:indexPath];
    
    [UIView animateWithDuration:0.25 animations:^{
        self.bottomView.frame = CGRectMake(cell.frame.origin.x, cell.frame.size.height-2, cell.frame.size.width - 4, 2);
    }];
    if(self.delegate && [self.delegate respondsToSelector:@selector(LGtitleBarView:didSelectedItem:)])
    {
        [self.delegate LGtitleBarView:self didSelectedItem:(int)indexPath.row];
    }
}



@end
