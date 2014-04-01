//
//  TabbedAppAppDelegate.h
//  TabbedApp
//
//  Created by 조영일 on 13. 4. 5..
//  Copyright (c) 2013년 조영일. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TabbedAppAppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UITabBarController *tabBarController;

@end
