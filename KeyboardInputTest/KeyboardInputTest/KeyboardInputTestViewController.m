//
//  KeyboardInputTestViewController.m
//  KeyboardInputTest
//
//  Created by 조영일 on 13. 4. 24..
//  Copyright (c) 2013년 조영일. All rights reserved.
//

#import "KeyboardInputTestViewController.h"

@interface KeyboardInputTestViewController ()

@end

@implementation KeyboardInputTestViewController


// 텍스트필드 입력이 끝났으므로 여기에 대해 resign해줌
- (IBAction) doneEditing: (id) sender {
    [sender resignFirstResponder];
}

// 헤더에 선언한 멤버변수를 코드에서 사용함
@synthesize textField;

// 이벤트는 버튼(바탕화면)에서 발생했으나 텍스트필드에서 키보드를 떼어야하므로
// textField에 대해 resign해줌 (sender가 아님)
- (IBAction) bgTouched: (id) sender {
    // resignFirstResponder의 의미는 입력을 받지 않겠다는 것
    [textField resignFirstResponder];
}

- (void)viewDidLoad
{
    // 뷰윈도우가 로드되자마자 키보드를 붙여주려면
    [textField becomeFirstResponder];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
