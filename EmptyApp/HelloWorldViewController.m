//
//  HelloWorldViewController.m
//  EmptyApp
//
//  Created by 조영일 on 13. 3. 30..
//  Copyright (c) 2013년 조영일. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()

@end

@implementation HelloWorldViewController

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
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction) btnClicked:(id) sender
{
    if (secondViewController == nil) {
        secondViewController = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    }
    
    // 두번째 뷰를 추가
    //[self.view addSubview:secondViewController.view];
    
    // 트랜지션 효과
    [UIView transitionWithView:self.view
                      duration:0.5
                       options:UIViewAnimationOptionTransitionFlipFromRight | UIViewAnimationOptionLayoutSubviews |     UIViewAnimationOptionAllowAnimatedContent
                    animations:^{
                        [self.view addSubview:secondViewController.view];
                    }
                    completion:NULL];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
