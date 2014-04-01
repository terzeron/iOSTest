//
//  ScrollViewTestViewController.h
//  ScrollViewTest
//
//  Created by 조영일 on 13. 5. 12..
//  Copyright (c) 2013년 조영일. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScrollViewTestViewController : UIViewController

{
    // XIB 상의 컨트롤을 멤버변수로 정의해서 연결할 것임
    IBOutlet UIScrollView *scrollView;
}

@property (nonatomic, retain) UIScrollView *scrollView;

@end
