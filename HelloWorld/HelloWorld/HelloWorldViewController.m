//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by 조영일 on 13. 3. 25..
//  Copyright (c) 2013년 조영일. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()

@end

@implementation HelloWorldViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)btnClicked:(id) sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello World!"
                                                    message:@"iPhone, here I come!"
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
    [alert release];
}

@end
