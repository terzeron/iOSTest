//
//  SecondViewController.h
//  EmptyApp
//
//  Created by 조영일 on 13. 3. 30..
//  Copyright (c) 2013년 조영일. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

{
    UILabel *label;
    UIButton *button;
}

@property (nonatomic, retain) UILabel *label;
@property (nonatomic, retain) UIButton *button;

- (IBAction) buttonClicked: (id) sender;

@end
