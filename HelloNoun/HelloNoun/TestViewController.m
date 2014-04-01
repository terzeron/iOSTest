//
//  TestViewController.m
//  HelloNoun
//
//  Created by 조영일 on 12. 8. 9..
//  Copyright (c) 2012년 조영일. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController
@synthesize userOutput;
@synthesize userInput;
@synthesize setOutput;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setUserOutput:nil];
    [self setUserInput:nil];
    [self setSetOutput:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction) setOutput:(id)sender {
    self.userOutput.text = self.userInput.text;
}

@end
