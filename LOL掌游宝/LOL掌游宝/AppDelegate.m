//
//  AppDelegate.m
//  LOL掌游宝
//
//  Created by qingyun on 15/11/25.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import "AppDelegate.h"
#import "QYTabBarViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourViewController.h"
#import "moreViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    UIWindow *window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    _window = window;
    _window.backgroundColor = [UIColor whiteColor];
    _window.hidden = NO;
    
    
    FirstViewController *c1 = [[FirstViewController alloc]init];
    UINavigationController *Nav1 = [[UINavigationController alloc]initWithRootViewController:c1];
    SecondViewController *c2 = [[SecondViewController alloc]init];
    UINavigationController *Nav2 = [[UINavigationController alloc]initWithRootViewController:c2];
    ThirdViewController *c3 = [[ThirdViewController alloc]init];
    UINavigationController *Nav3 = [[UINavigationController alloc]initWithRootViewController:c3];
    FourViewController *c4 = [[FourViewController alloc]init];
    UINavigationController *Nav4 = [[UINavigationController alloc]initWithRootViewController:c4];
    moreViewController *c5 = [[moreViewController alloc]init];
    UINavigationController *Nav5 = [[UINavigationController alloc]initWithRootViewController:c5];
    NSArray *viewControllers = @[Nav1,Nav2,Nav3,Nav4,Nav5];
    
    UITabBarController *mainViewController = [[UITabBarController alloc]init];
    
    mainViewController.viewControllers = viewControllers;
    
    
//    UITabBar *tabBar = mainViewController.tabBar;
//    UITabBarItem *tabBarItem1 = [tabBar.items objectAtIndex:0];
//    UITabBarItem *tabBarItem2 = [tabBar.items objectAtIndex:1];
//    tabBarItem1.title = @"新闻资讯";
//    tabBarItem2.title = @"视频";
    
    
    
    
    //设置tabBar的背景图片
    UIImage *tabBarBackground = [UIImage imageNamed:@"黑色背景"];
    [[UITabBar appearance] setBackgroundImage:tabBarBackground];
    
    self.window.rootViewController = mainViewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
