//
//  ViewController.m
//  CustomTabbarView
//
//  Created by Rana on 10/2/16.
//  Copyright © 2016 Rana. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self customTabBar];
}

#pragma mark :::::  Custom TabbarView Create    :::::
- (void) customTabBar{
    TabBarView *tabBarView = [[TabBarView alloc] init];
    [tabBarView setFrame:CGRectMake(0, self.view.bounds.size.height - 60, self.view.bounds.size.width, 60)];
    [tabBarView setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight];
    [tabBarView setTabbarImageArray:@[@"History Icon.png", @"Settings Icon.png", @"Users Icon.png"]];
    [tabBarView setTabbarTitleArray:@[@"History", @"Settings", @"Users"]];
    tabBarView.delegate = self;
    [tabBarView initWithTabBar:self.view.frame];
    [self.view addSubview:tabBarView];
}

#pragma mark :::::  Custom TabbarView Create    :::::
- (void) selectedTabBarIndex:(NSInteger)index{
    NSLog(@"Selected TabBar index  %ld", (long)index);
    switch (index) {
        case 1:
            //History
            break;
            
        case 2:
            //Setting
            break;
            
        case 3:
            //User
            break;
            
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
