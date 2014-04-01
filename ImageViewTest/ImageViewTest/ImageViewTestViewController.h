//
//  ImageViewTestViewController.h
//  ImageViewTest
//
//  Created by 조영일 on 13. 3. 28..
//  Copyright (c) 2013년 조영일. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageViewTestViewController : UIViewController <UIAlertViewDelegate, UIActionSheetDelegate>

{
    IBOutlet UIPageControl *pageControl;
    IBOutlet UIImageView *fgImageView;
    IBOutlet UIImageView *bgImageView;
    UIImageView *nextImageView, *currentImageView;
    int prevPageNum;
}

@property (nonatomic, retain) UIPageControl *pageControl;
@property (nonatomic, retain) UIImageView *fgImageView;
@property (nonatomic, retain) UIImageView *bgImageView;

@end
