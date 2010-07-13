//
//  WTTableCell.m
//  IB_TableCells
//
//  Created by Brandon Alexander on 5/17/10.
//  Copyright 2010 While This, inc. All rights reserved.
//

#import "WTTableCell.h"


@implementation WTTableCell

@synthesize idLabel, timestamp, idLabel1, timestamp1, idLabel2, timestamp2;

// Borrowed from http://iphonedevelopment.blogspot.com/2010/04/table-view-cells-redux.html
+ (NSString *)reuseIdentifier {
    return (NSString *)TABLE_CELL_IDENTIFIER;
}

- (NSString *)reuseIdentifier {
    return [[self class] reuseIdentifier];
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if ((self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])) {
        // Initialization code
    }
    return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {

    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void)dealloc {
	[idLabel release];
	[timestamp release];
	[idLabel1 release];
	[timestamp1 release];
	[idLabel2 release];
	[timestamp2 release];
    
	[super dealloc];
}


@end
