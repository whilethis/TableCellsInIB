//
//  WTDynamicTableViewController.h
//  IB_TableCells
//
//  Created by Brandon Alexander on 5/17/10.
//  Copyright 2010 While This, inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WTTableCell.h"

@interface WTDynamicTableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
	NSMutableArray *itemArray;
	
	UITableView *myTableView;
	WTTableCell *myCell;
}

@property (nonatomic, retain) NSMutableArray *itemArray;
@property (nonatomic, retain) IBOutlet UITableView *myTableView;

@property (nonatomic, retain) IBOutlet WTTableCell *myCell;

-(IBAction) addItem:(id)sender;

@end
