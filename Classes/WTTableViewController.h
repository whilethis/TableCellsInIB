//
//  WTTableViewController.h
//  IB_TableCells
//
//  Created by Brandon Alexander on 5/13/10.
//  Copyright 2010 While This, inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WTInputCell.h"

@interface WTTableViewController : UITableViewController {
	UITableViewCell *cell1;
	
	WTInputCell *username;
	WTInputCell *password;
}

@property(retain, nonatomic) IBOutlet UITableViewCell *cell1;
@property(retain, nonatomic) IBOutlet WTInputCell *username;
@property(retain, nonatomic) IBOutlet WTInputCell *password;


-(IBAction) cell1Pressed:(id)sender;

@end
