//
//  WebViewTestViewController.m
//  WebViewTest
//
//  Created by 조영일 on 13. 3. 30..
//  Copyright (c) 2013년 조영일. All rights reserved.
//

#import "WebViewTestViewController.h"

@interface WebViewTestViewController ()

@end

@implementation WebViewTestViewController

@synthesize webView;

- (void)viewDidLoad
{
    NSURL *url = [NSURL URLWithString:@"http://terzeron.net"];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [webView loadRequest:req];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
