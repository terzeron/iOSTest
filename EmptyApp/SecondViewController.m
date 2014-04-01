//
//  SecondViewController.m
//  EmptyApp
//
//  Created by 조영일 on 13. 3. 30..
//  Copyright (c) 2013년 조영일. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

//@synthesize button;
//@synthesize label;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    // 레이블
    CGRect frame = CGRectMake(20, 10, 280, 50);
    label = [[UILabel alloc] initWithFrame:frame];
    label.textAlignment = UITextAlignmentCenter;
    label.font = [UIFont fontWithName:@"Verdana" size:20];
    label.text = @"This is a label";
    label.backgroundColor = [UIColor lightGrayColor];
    
    // 버튼
    frame = CGRectMake(20, 60, 280, 50);
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = frame;
    [button setTitle:@"OK" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor clearColor];
    // 버튼의 이벤트 핸들러 등록
    [button addTarget:self
               action:@selector(buttonClicked:)
     forControlEvents:UIControlEventTouchUpInside];
    
    // 레이블과 버튼을 뷰에 추가
    [self.view addSubview: label];
    [self.view addSubview: button];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (IBAction) buttonClicked: (id) sender
{
    /*
     UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Action invoked!"
     message:@"Button clicked!"
     delegate:self
     cancelButtonTitle:@"OK"
     otherButtonTitles:nil];
     [alert show];
     */
    
    // 상위 뷰에서 이 뷰를 제거
    //[self.view removeFromSuperview];
    
    [UIView transitionWithView:self.view.superview
                      duration:0.5
                       options:UIViewAnimationOptionTransitionFlipFromLeft | UIViewAnimationOptionLayoutSubviews | UIViewAnimationOptionAllowAnimatedContent
                    animations:^{
                        [self.view removeFromSuperview];
                    }
                    completion:NULL];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
