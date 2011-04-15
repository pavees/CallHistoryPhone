//
//  CallHistoryAppDelegate.h
//  CallHistory
//
//  Created by Ron Leisti on 11-04-10.
//  Copyright 2011 Ron Leisti. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CallHistoryViewController;

@interface CallHistoryAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet CallHistoryViewController *viewController;

@end
