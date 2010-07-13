//
//  WTInputCell.m
//  IB_TableCells
//
//  Created by Brandon Alexander on 5/18/10.
//  Copyright 2010 While This, inc. All rights reserved.
//

#import "WTInputCell.h"


@implementation WTInputCell
@synthesize inputView;

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
	[inputView release];
	
    [super dealloc];
}


@end
