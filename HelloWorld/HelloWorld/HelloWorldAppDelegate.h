//
//  HelloWorldAppDelegate.h
//  HelloWorld
//
//  Created by 조영일 on 13. 3. 25..
//  Copyright (c) 2013년 조영일. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HelloWorldViewController;

@interface HelloWorldAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) HelloWorldViewController *viewController;

@end
