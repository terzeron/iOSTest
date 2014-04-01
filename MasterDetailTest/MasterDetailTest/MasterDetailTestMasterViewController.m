//
//  MasterDetailTestMasterViewController.m
//  MasterDetailTest
//
//  Created by 조영일 on 13. 4. 4..
//  Copyright (c) 2013년 조영일. All rights reserved.
//

#import "MasterDetailTestMasterViewController.h"

#import "MasterDetailTestDetailViewController.h"

@interface MasterDetailTestMasterViewController ()

@end

@implementation MasterDetailTestMasterViewController

@synthesize detailViewController = _detailViewController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Master", @"Master");
        if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
            self.clearsSelectionOnViewWillAppear = NO;
            self.contentSizeForViewInPopover = CGSizeMake(320.0, 600.0);
        }
    }
    return self;
}

- (void)viewDidLoad
{
    // 배열을 초기화
    listOfMovies = [[NSMutableArray alloc] init];
    [listOfMovies addObject:@"Traininig Day"];
    [listOfMovies addObject:@"Remember the Titans"];
    [listOfMovies addObject:@"John Q."];
    [listOfMovies addObject:@"The Bone Collector"];
    [listOfMovies addObject:@"Ricochet"];
    [listOfMovies addObject:@"Malcolm X"];
    [listOfMovies addObject:@"Courage Under Fire"];
    [listOfMovies addObject:@"Antwone Fisher"];
    [listOfMovies addObject:@"Courage Under Fire"];
    [listOfMovies addObject:@"He Got Game"];
    [listOfMovies addObject:@"The Pelican Brief"];
    [listOfMovies addObject:@"Glory"];
    [listOfMovies addObject:@"The Preacher’s Wife"];

    self.navigationItem.title = NSLocalizedString(@"Movies", @"Movies");
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    /*
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    self.navigationItem.rightBarButtonItem = addButton;
    */
    
    // 후처리
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        [self.tableView selectRowAtIndexPath:[NSIndexPath indexPathForRow:0
                                                                inSection:0]
                                    animated:NO
                              scrollPosition:UITableViewScrollPositionMiddle];
        self.detailViewController = (MasterDetailTestDetailViewController *) [[self.splitViewController.viewControllers lastObject] topViewController];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //return _objects.count;
    return [listOfMovies count];
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
    }
    
    // 테이블 셀의 값을 지정함
    //NSDate *object = _objects[indexPath.row];
    //cell.textLabel.text = [object description];
    cell.textLabel.text = [listOfMovies objectAtIndex:indexPath.row];
    return cell;
}

/*
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
 */

/*
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{ipad 
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [_objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}
 */
 
/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //NSDate *object = _objects[indexPath.row];
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
	    if (!self.detailViewController) {
            // 디테일 뷰가 없을 때 최초 생성
	        self.detailViewController = [[MasterDetailTestDetailViewController alloc] initWithNibName:@"MasterDetailTestDetailViewController_iPhone" bundle:nil];
	    }
	    
        // 디테일 항목의 값을 지정함
        //self.detailViewController.detailItem = object;
        self.detailViewController.detailItem = [NSString stringWithFormat:@"%@", [listOfMovies objectAtIndex:indexPath.row]];
        
        [self.navigationController pushViewController:self.detailViewController animated:YES];
    } else {
        NSLog(@"ipad %@", [listOfMovies objectAtIndex:indexPath.row]);
        // 디테일 항목의 값을 지정함
        //self.detailViewController.detailItem = object;
        self.detailViewController.detailItem = [NSString stringWithFormat:@"%@",
            [listOfMovies objectAtIndex:indexPath.row]];
        NSLog(@"%@", self.detailViewController.detailItem);
    }
}

/*
 - (void)insertNewObject:(id)sender
 {
 if (!_objects) {
 _objects = [[NSMutableArray alloc] init];
 }
 [_objects insertObject:[NSDate date] atIndex:0];
 NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
 [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
 }
 */

@end
