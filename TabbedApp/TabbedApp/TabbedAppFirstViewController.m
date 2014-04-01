//
//  TabbedAppFirstViewController.m
//  TabbedApp
//
//  Created by 조영일 on 13. 4. 5..
//  Copyright (c) 2013년 조영일. All rights reserved.
//

#import "TabbedAppFirstViewController.h"

@interface TabbedAppFirstViewController ()

@end

@implementation TabbedAppFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"FirstTab", @"This is a first tab label.");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
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
