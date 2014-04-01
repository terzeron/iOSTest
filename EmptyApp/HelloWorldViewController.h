//
//  HelloWorldViewController.h
//  EmptyApp
//
//  Created by 조영일 on 13. 3. 30..
//  Copyright (c) 2013년 조영일. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SEcondViewController.h"

@interface HelloWorldViewController : UIViewController
{
    SecondViewController *secondViewController;
}

- (IBAction) btnClicked:(id) sender;

@end
