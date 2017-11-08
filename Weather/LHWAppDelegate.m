//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "City.h"
#import "CityViewController.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // Your code goes here
    // Don't forget to assign the window a rootViewController
    
    UITabBarController *tabBarController = [[UITabBarController alloc]init];
    self.window.rootViewController = tabBarController;
    
    City *city1 = [[City alloc]initWithName:@"Toronto" temperature:5 image:[UIImage imageNamed:@"toronto.png" ]];
    City *city2 = [[City alloc]initWithName:@"HongKong" temperature:22 image:[UIImage imageNamed:@"hongkong.png" ]];
    City *city3 = [[City alloc]initWithName:@"Maldives" temperature:29 image:[UIImage imageNamed:@"maldives.png" ]];
    City *city4 = [[City alloc]initWithName:@"Shanghai" temperature:14 image:[UIImage imageNamed:@"shanghai.png" ]];
    City *city5 = [[City alloc]initWithName:@"Tokyo" temperature:19 image:[UIImage imageNamed:@"tokyo.png" ]];
    
    CityViewController *cityVC1 = [[CityViewController alloc]initWithCity:city1];
    CityViewController *cityVC2 = [[CityViewController alloc]initWithCity:city2];
    CityViewController *cityVC3 = [[CityViewController alloc]initWithCity:city3];
    CityViewController *cityVC4 = [[CityViewController alloc]initWithCity:city4];
    CityViewController *cityVC5 = [[CityViewController alloc]initWithCity:city5];
    
    UINavigationController *cityNavVC1 = [[UINavigationController alloc]initWithRootViewController:cityVC1];
    UINavigationController *cityNavVC2 = [[UINavigationController alloc]initWithRootViewController:cityVC2];
    UINavigationController *cityNavVC3 = [[UINavigationController alloc]initWithRootViewController:cityVC3];
    UINavigationController *cityNavVC4 = [[UINavigationController alloc]initWithRootViewController:cityVC4];
    UINavigationController *cityNavVC5 = [[UINavigationController alloc]initWithRootViewController:cityVC5];

    cityNavVC1.tabBarItem = [[UITabBarItem alloc]initWithTitle:city1.name image:[UIImage imageNamed: @"default.png"] tag:0];
    cityNavVC2.tabBarItem = [[UITabBarItem alloc]initWithTitle:city2.name image:[UIImage imageNamed: @"default.png"] tag:0];
    cityNavVC3.tabBarItem = [[UITabBarItem alloc]initWithTitle:city3.name image:[UIImage imageNamed: @"default.png"] tag:0];
    cityNavVC4.tabBarItem = [[UITabBarItem alloc]initWithTitle:city4.name image:[UIImage imageNamed: @"default.png"] tag:0];
    cityNavVC5.tabBarItem = [[UITabBarItem alloc]initWithTitle:city5.name image:[UIImage imageNamed: @"default.png"] tag:0];
    
    tabBarController.viewControllers = @[cityNavVC1, cityNavVC2, cityNavVC3, cityNavVC4, cityNavVC5];
    
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
