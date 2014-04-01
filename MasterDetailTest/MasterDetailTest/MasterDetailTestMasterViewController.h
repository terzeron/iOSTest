//
//  MasterDetailTestMasterViewController.h
//  MasterDetailTest
//
//  Created by 조영일 on 13. 4. 4..
//  Copyright (c) 2013년 조영일. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MasterDetailTestDetailViewController;

@interface MasterDetailTestMasterViewController : UITableViewController
{
    NSMutableArray *listOfMovies;
}

@property (strong, nonatomic) MasterDetailTestDetailViewController *detailViewController;

@end
