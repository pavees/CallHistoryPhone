//
//  CallHistoryAppDelegate.m
//  CallHistory
//
//  Created by Ron Leisti on 11-04-10.
//  Copyright 2011 Ron Leisti. All rights reserved.
//

#import "CallHistoryAppDelegate.h"
#import "CallHistoryViewController.h"
#import "CallHistoryClient.h"

/* Uncomment the following for the CTCall integration */
/*
#import <CoreTelephony/CTCall.h>
#import <CoreTelephony/CTCallCenter.h>
 */

@implementation CallHistoryAppDelegate


@synthesize window=_window;

@synthesize viewController=_viewController;

/* Uncomment the following for the CTCall integration */
// CTCallCenter* _callCenter;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Construct a new call center and attach an event handler to capture incoming calls.
    // NOTE: I have not been able to test this code without having an actual iPhone.
    //       The inclusion of the CoreTelephony libraries will not compile for the simulator.
    
    /* Uncomment the following for the CTCall integration */
    /*
    _callCenter = [[CTCallCenter alloc] init];
    _callCenter.callEventHandler = ^(CTCall* call) {
        // For new incoming calls, send a POST request to the CallHistory
        // server with the CallID.
        if ([call callState] == CTCallStateIncoming) {
            [CallHistoryClient sendIncomingCallToURL:CallHistoryServerlPOSTUrl withPhoneNumber:[call callID]];
        }
    };
    */
         
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inhactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [_viewController release];
    /* Uncomment the following for CTCall integration */
//    [_callCenter release];
    [super dealloc];
}

@end
