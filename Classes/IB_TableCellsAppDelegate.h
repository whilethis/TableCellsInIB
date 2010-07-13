//
//  IB_TableCellsAppDelegate.h
//  IB_TableCells
//
//  Created by Brandon Alexander on 5/11/10.
//  Copyright While This, inc 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WTTableViewController;

@interface IB_TableCellsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UITabBarController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *viewController;

@end

