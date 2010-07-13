//
//  WTInputCell.h
//  IB_TableCells
//
//  Created by Brandon Alexander on 5/18/10.
//  Copyright 2010 While This, inc. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface WTInputCell : UITableViewCell {
	UITextField *inputView;
}

@property (retain, nonatomic) IBOutlet UITextField *inputView;

@end
