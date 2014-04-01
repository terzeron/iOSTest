//
//  OAAViewController.h
//  OutletsAndActions
//
//  Created by 조영일 on 12. 12. 3..
//  Copyright (c) 2012년 조영일. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OAAViewController : UIViewController
{
    // outlet 선언
    // outlet은 object reference임
    IBOutlet UITextField *txtName;
}

// 속성으로 outlet 변수를 지정함
@property (nonatomic, retain) UITextField *txtName;

// action 선언
// action은 event handler임
-(IBAction) btnClicked:(id) sender;

@end
