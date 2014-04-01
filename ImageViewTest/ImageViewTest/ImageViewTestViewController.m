//
//  ImageViewTestViewController.m
//  ImageViewTest
//
//  Created by 조영일 on 13. 3. 28..
//  Copyright (c) 2013년 조영일. All rights reserved.
//

#import "ImageViewTestViewController.h"

//@interface ImageViewTestViewController ()

//@end

@implementation ImageViewTestViewController

@synthesize pageControl;
@synthesize fgImageView;
@synthesize bgImageView;

- (void)viewDidLoad
{
    // 앞편 이미지뷰에 이미지를 지정하고 next가 뒷면 이미지뷰를 가리키도록 함
    [fgImageView setImage:[UIImage imageNamed:@"1.png"]];
    nextImageView = bgImageView;
    
    [fgImageView setHidden:NO];
    [bgImageView setHidden:YES];
    
    [pageControl addTarget:self action:@selector(pageTurning:)
          forControlEvents:UIControlEventValueChanged];
    
    prevPageNum = 0;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) pageTurning: (UIPageControl *) pageController {
    //---get the page number you can turning to---
    NSInteger pageNum = [pageController currentPage];
    //NSLog(@"pageNum=%d\n", pageNum);
    // 페이지 번호에 따라 새로운 이미지를 다음 이미지뷰에 연결함
    switch (pageNum) {
        case 0:
            [nextImageView setImage:
             [UIImage imageNamed:@"1.png"]];
            break;
        case 1:
            [nextImageView setImage:
             [UIImage imageNamed:@"2.png"]];
            break;
        case 2:
            [nextImageView setImage:
             [UIImage imageNamed:@"3.png"]];
            break;
        case 3:
            [nextImageView setImage:
             [UIImage imageNamed:@"4.png"]];
            break;
        case 4:
            [nextImageView setImage:
             [UIImage imageNamed:@"5.png"]];
            break;
        default:
            break;
    }
    
    //---switch the two imageview views---
    // 다음과 현재를 의미하는 포인터를 앞면과 뒷면을 서로 바꿔서 대입함
    if (nextImageView.tag == 0) { //---fgImageView---
        nextImageView = bgImageView;
        currentImageView = fgImageView;
    }
    else {                        //---bgImageView---
        nextImageView = fgImageView;
        currentImageView = bgImageView;
    }
    
    UIViewAnimationOptions transitionOption;
    // pageNum이 증가할 때와 감소할 때의 뒤집히는 효과가 다름
    if (pageNum > prevPageNum)
        transitionOption = UIViewAnimationOptionTransitionFlipFromLeft;
    else
        transitionOption = UIViewAnimationOptionTransitionFlipFromRight;
    
    // 다음 이미지뷰는 감추고 현재 이미지뷰는 노출함
    [UIView transitionWithView:nextImageView
                      duration:2.5
                       options:transitionOption
                    animations:^{
                        [nextImageView setHidden:YES];
                    }
                    completion:NULL];
    
    
    [UIView transitionWithView:currentImageView
                      duration:2.5
                       options:transitionOption
                    animations:^{
                        [currentImageView setHidden:NO];
                    }
                    completion:NULL];
    
    prevPageNum = pageNum;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
