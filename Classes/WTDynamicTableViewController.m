//
//  WTDynamicTableViewController.m
//  IB_TableCells
//
//  Created by Brandon Alexander on 5/17/10.
//  Copyright 2010 While This, inc. All rights reserved.
//

#import "WTDynamicTableViewController.h"
#import "WTTableCell.h"

@implementation WTDynamicTableViewController

@synthesize itemArray, myTableView, myCell;

#pragma mark -
#pragma mark View lifecycle


- (void)viewDidLoad {
    [super viewDidLoad];
	
	itemArray = [[NSMutableArray alloc] init];
	
	for (int i = 0; i < 1000; i++) {
		[self addItem:nil];
	}
}

#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [itemArray count];
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    WTTableCell *cell = (WTTableCell *)[tableView dequeueReusableCellWithIdentifier:[WTTableCell reuseIdentifier]];
    if (cell == nil) {
		NSLog(@"Loaded");
		//Load Nib
		[[NSBundle mainBundle] loadNibNamed:@"DynamicTableCells" owner:self options:nil];
		
		cell = myCell;
		
		//Clear out
		[self setMyCell:nil];
    }
    
    // Configure the cell...
	NSDictionary *currentDictionary = [itemArray objectAtIndex:[indexPath row]];
	
	[cell.idLabel setText:[[currentDictionary objectForKey:@"itemId"] stringValue]];
	[cell.timestamp setText:[[currentDictionary objectForKey:@"timestamp"] description]];
	[cell.idLabel1 setText:[[currentDictionary objectForKey:@"itemId"] stringValue]];
	[cell.timestamp1 setText:[[currentDictionary objectForKey:@"timestamp"] description]];
	[cell.idLabel2 setText:[[currentDictionary objectForKey:@"itemId"] stringValue]];
	[cell.timestamp2 setText:[[currentDictionary objectForKey:@"timestamp"] description]];
	
	return cell;
}


#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here. Create and push another view controller.
}

#pragma mark -
#pragma mark Actions Received
-(IBAction) addItem:(id)sender {
	NSDate *date = [[NSDate alloc] init];
	NSDictionary *newObject = [[NSDictionary alloc] initWithObjectsAndKeys:date, @"timestamp", [NSNumber numberWithUnsignedInt: [itemArray count]], @"itemId", nil];
	
	[itemArray addObject:newObject];
	
	[myTableView reloadData];
	
	[date release];
	[newObject release];
}


#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc {
	[itemArray release];
	[myTableView release];
	
    [super dealloc];
}


@end

