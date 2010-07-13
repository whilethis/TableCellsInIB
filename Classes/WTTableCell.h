//
//  WTTableCell.h
//  IB_TableCells
//
//  Created by Brandon Alexander on 5/17/10.
//  Copyright 2010 While This, inc. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface WTTableCell : UITableViewCell {
	UILabel *idLabel;
	UILabel *timestamp;
	UILabel *idLabel1;
	UILabel *timestamp1;
	UILabel *idLabel2;
	UILabel *timestamp2;
}

@property (nonatomic, retain) IBOutlet UILabel *idLabel;
@property (nonatomic, retain) IBOutlet UILabel *timestamp;
@property (nonatomic, retain) IBOutlet UILabel *idLabel1;
@property (nonatomic, retain) IBOutlet UILabel *timestamp1;
@property (nonatomic, retain) IBOutlet UILabel *idLabel2;
@property (nonatomic, retain) IBOutlet UILabel *timestamp2;

+ (NSString *)reuseIdentifier;

@end
