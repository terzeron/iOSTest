//
//  OAAViewController.m
//  OutletsAndActions
//
//  Created by 조영일 on 12. 12. 3..
//  Copyright (c) 2012년 조영일. All rights reserved.
//

#import "OAAViewController.h"

@interface OAAViewController ()

@end

@implementation OAAViewController

// 속성을 합성함
@synthesize txtName;

// 버튼이 눌렸을 때 얼럿 뷰를 표시함
-(IBAction) btnClicked:(id)sender {
    NSString *str = [[NSString alloc] initWithFormat:@"Hello, %@", txtName.text];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello!" message:str delegate:self cancelButtonTitle:@"Done" otherButtonTitles:nil];
    [alert show];
    [str release];
    [alert release];
}

-(void)dealloc {
    // outlet을 해제함
    [txtName release];
    [super dealloc];
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
