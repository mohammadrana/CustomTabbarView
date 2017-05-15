//
//  TabBarView.h
//  CustomSlideMenu
//
//  Created by Rana on 10/2/16.
//  Copyright © 2016 Rana. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomTabBarDelegate <NSObject>
- (void) selectedTabBarIndex:(NSInteger)index;
@end

@interface TabBarView : UIView
{
    UIView *tabbarBg;
}

@property (nonatomic, strong) NSArray *tabbarImageArray;
@property (nonatomic, strong) NSArray *tabbarTitleArray;

@property (nonatomic, weak) id <CustomTabBarDelegate> delegate;

- (void) initWithTabBar:(CGRect)rect;

@end
