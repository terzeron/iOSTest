//
//  SingleViewBasedAppAppDelegate.h
//  SingleViewBasedApp
//
//  Created by 조영일 on 13. 3. 30..
//  Copyright (c) 2013년 조영일. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SingleViewBasedAppViewController;

@interface SingleViewBasedAppAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) SingleViewBasedAppViewController *viewController;

@end
