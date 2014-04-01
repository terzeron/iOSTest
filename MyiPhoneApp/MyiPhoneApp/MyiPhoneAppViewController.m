//
//  MyiPhoneAppViewController.m
//  MyiPhoneApp
//
//  Created by 조영일 on 13. 4. 24..
//  Copyright (c) 2013년 조영일. All rights reserved.
//

#import "MyiPhoneAppViewController.h"

@interface MyiPhoneAppViewController ()

@end

@implementation MyiPhoneAppViewController

- (void)viewDidLoad
{
    // 디바이스 확인
#if (__IPHONE_OS_VERSION_MAX_ALLOWED >= 30200)
    NSString *str;
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        str = @"Running as an iPad application";
    } else {
        str = @"Running as an iPhone application";
    }
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Platform"
                                                    message:str
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
#endif
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
