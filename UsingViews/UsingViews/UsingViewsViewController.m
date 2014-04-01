//
//  UsingViewsViewController.m
//  UsingViews
//
//  Created by 조영일 on 13. 3. 28..
//  Copyright (c) 2013년 조영일. All rights reserved.
//

#import "UsingViewsViewController.h"

@interface UsingViewsViewController ()

@end

@implementation UsingViewsViewController

- (void)viewDidLoad
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello"
                                                    message:@"This is an alert view"
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:@"Option 1", @"Option 2", nil];
    [alert show];

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) alertView: (UIAlertView *) alertView clickedButtonAtIndex:(NSInteger) buttonIndex {
    NSLog(@"%d", buttonIndex);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
