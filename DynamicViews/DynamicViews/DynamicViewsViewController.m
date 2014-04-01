//
//  DynamicViewsViewController.m
//  DynamicViews
//
//  Created by 조영일 on 13. 3. 30..
//  Copyright (c) 2013년 조영일. All rights reserved.
//

#import "DynamicViewsViewController.h"

@interface DynamicViewsViewController ()

@end

@implementation DynamicViewsViewController

- (void)loadView {
    UIView *view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    view.backgroundColor = [UIColor lightGrayColor];
    
    CGRect frame = CGRectMake(10, 20, 300, 40);
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.backgroundColor = [UIColor clearColor];
    label.text = @"This is a label";
    label.textAlignment = UITextAlignmentCenter;
    label.font = [UIFont fontWithName:@"Verdana" size:20];
    label.tag = 1000;
    
    frame = CGRectMake(10, 70, 300, 50);
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = frame;
    button.backgroundColor = [UIColor clearColor];
    [button setTitle:@"Click me" forState:UIControlStateNormal];
    button.tag = 2000;
    [button addTarget:self
               action:@selector(buttonClicked:)
     forControlEvents:UIControlEventTouchUpInside];
    
    [view addSubview:label];
    [view addSubview:button];
    // 하위 뷰의 순서를 서로 바꿔줄 수 있음
    //[view exchangeSubviewAtIndex:1 withSubviewAtIndex:0];
    
    for (int i = 0; i < [view.subviews count]; ++i) {
        UIView *v = [view.subviews objectAtIndex:i];
        NSLog(@"%d", v.tag);
    }
    
    self.view = view;
    
    // 하위 뷰를 제거할 수 있음
    //[label removeFromSuperview];
}

- (IBAction) buttonClicked: (id) sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Action invoked"
                                                    message:@"Button clicked"
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

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

@end
