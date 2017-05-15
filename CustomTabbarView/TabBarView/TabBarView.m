//
//  TabBarView.m
//  CustomSlideMenu
//
//  Created by Rana on 10/2/16.
//  Copyright © 2016 Rana. All rights reserved.
//

#import "TabBarView.h"

@implementation TabBarView

- (void)awakeFromNib {
    [super awakeFromNib];
    NSLog(@"awakeFromNib");
    // Initialization code
}

- (void)initWithTabBar:(CGRect)frame
{
    tabbarBg = [[UIView alloc] initWithFrame:frame];
    tabbarBg.backgroundColor = [UIColor colorWithRed:6.0/255.0 green:96.0/255.0 blue:168.0/255.0 alpha:1.0];
    [self addSubview:tabbarBg];
    
    float tabarBgWidth = tabbarBg.bounds.size.width;
    float tabarBgHeight = tabbarBg.bounds.size.height;
    
    int count = (int)[self.tabbarImageArray count];
    for (int i = 0; i < count; i++) {
        UIView *tabbarView = [[UIView alloc] initWithFrame:CGRectMake(tabarBgWidth/count * i, 0, tabarBgWidth/count, tabarBgHeight)];
        tabbarView.backgroundColor = [UIColor blackColor];
        tabbarView.tag = i + 1;
        [tabbarBg addSubview:tabbarView];
        
        UIButton *tabbarBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, tabarBgWidth/count, tabarBgHeight)];
        tabbarBtn.tag = i + 1;
        tabbarBtn.backgroundColor = [UIColor clearColor];
        [tabbarBtn addTarget:self action:@selector(tabbarPressed:) forControlEvents:UIControlEventTouchUpInside];
        [tabbarView addSubview:tabbarBtn];
        
        float tabbarWidth = tabbarView.bounds.size.width;
        
        UILabel *tabbarLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 5, tabbarWidth, 18)];
        tabbarLabel.backgroundColor = [UIColor clearColor];
        tabbarLabel.font = [UIFont systemFontOfSize:12.0];
        tabbarLabel.text = [self.tabbarTitleArray objectAtIndex:i];
        tabbarLabel.textColor = [UIColor whiteColor];
        tabbarLabel.textAlignment = NSTextAlignmentCenter;
        [tabbarView addSubview:tabbarLabel];
        
        UIImageView *tabbarImage = [[UIImageView alloc] initWithFrame:CGRectMake(tabbarWidth/2 - 15, 25, 33, 30)];
        tabbarImage.image = [UIImage imageNamed:[self.tabbarImageArray objectAtIndex:i]];
        tabbarImage.contentMode = UIViewContentModeScaleAspectFit;
        [tabbarView addSubview:tabbarImage];
    }
}

- (void) tabbarPressed:(UIButton *)button{
    //NSLog(@"tabbarPressed  %ld", (long)button.tag);
    
    UIView *tabOne = (UIView*)[tabbarBg viewWithTag:1];
    UIView *tabTwo = (UIView*)[tabbarBg viewWithTag:2];
    UIView *tabThree = (UIView*)[tabbarBg viewWithTag:3];
    
    [tabOne setBackgroundColor:[UIColor blackColor]];
    [tabTwo setBackgroundColor:[UIColor blackColor]];
    [tabThree setBackgroundColor:[UIColor blackColor]];
    
    [(UIView*)[tabbarBg viewWithTag:button.tag] setBackgroundColor:[UIColor whiteColor]];
    
    [self.delegate selectedTabBarIndex:button.tag];
}


@end
