//
//  TestViewController.h
//  HelloNoun
//
//  Created by 조영일 on 12. 8. 9..
//  Copyright (c) 2012년 조영일. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *userOutput;
@property (weak, nonatomic) IBOutlet UITextField *userInput;
@property (weak, nonatomic) IBOutlet UIButton *setOutput;

@end
