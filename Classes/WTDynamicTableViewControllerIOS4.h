//
//  WTDynamicTableViewControllerIOS4.h
//  IB_TableCells
//
//  Created by Brandon Alexander on 7/12/10.
//  Copyright 2010 While This, inc. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WTTableCell;

@interface WTDynamicTableViewControllerIOS4 : UIViewController <UITableViewDelegate, UITableViewDataSource> {
	NSMutableArray *itemArray;
	
	UITableView *myTableView;
	WTTableCell *myCell;
	UINib *cellNib;
}

@property (nonatomic, retain) NSMutableArray *itemArray;
@property (nonatomic, retain) IBOutlet UITableView *myTableView;

@property (nonatomic, retain) IBOutlet WTTableCell *myCell;

-(IBAction) addItem:(id)sender;

-(UINib *) cellNib;

@end
