//
//  MasterDetailTestDetailViewController.h
//  MasterDetailTest
//
//  Created by 조영일 on 13. 4. 4..
//  Copyright (c) 2013년 조영일. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MasterDetailTestDetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
