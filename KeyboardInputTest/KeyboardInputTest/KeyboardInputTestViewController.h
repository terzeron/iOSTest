//
//  KeyboardInputTestViewController.h
//  KeyboardInputTest
//
//  Created by 조영일 on 13. 4. 24..
//  Copyright (c) 2013년 조영일. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KeyboardInputTestViewController : UIViewController
{
    IBOutlet UITextField *textField;
}

@property (nonatomic, retain) UITextField *textField;
// 여기에 textField를 선언한 후에 xib에서 file's owner에 ctrl-click해서
// textField를 연결해줌. 그래야 버튼을 터치했을 때 텍스트필드에 접근이 가능함

- (IBAction) doneEditing: (id) sender;
- (IBAction) bgTouched: (id) sender;

@end
