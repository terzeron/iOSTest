//
//  ScrollViewTestViewController.m
//  ScrollViewTest
//
//  Created by 조영일 on 13. 5. 12..
//  Copyright (c) 2013년 조영일. All rights reserved.
//

#import "ScrollViewTestViewController.h"

@interface ScrollViewTestViewController ()

@end

@implementation ScrollViewTestViewController

// scrollView 멤버변수를 활성화(컨트롤과 멤버변수를 연결)
@synthesize scrollView;

- (void)viewDidLoad
{
    scrollView.frame = CGRectMake(0, 0, 320, 548);
    [scrollView setContentSize:CGSizeMake(320, /*857*/ 2048)];
    // 제대로 동작하지 않으면 File Inspector에서 use autolayout을 끌 것
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
