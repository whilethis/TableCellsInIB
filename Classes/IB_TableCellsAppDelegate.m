//
//  IB_TableCellsAppDelegate.m
//  IB_TableCells
//
//  Created by Brandon Alexander on 5/11/10.
//  Copyright While This, inc 2010. All rights reserved.
//

#import "IB_TableCellsAppDelegate.h"
#import "WTTableViewController.h"

@implementation IB_TableCellsAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
	
    [super dealloc];
}


@end
