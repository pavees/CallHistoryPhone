//
//  CallHistoryClient.h
//  CallHistory
//
//  Created by Ron Leisti on 11-04-13.
//  Copyright 2011 Ron Leisti. All rights reserved.
//
//  Methods for interacting with the CallHistory server.
//

#import <Foundation/Foundation.h>

extern NSString* const CallHistoryServerPOSTUrl;

@interface CallHistoryClient : NSObject {
    
}

// Sends an incoming call POST request to a CallHistory server
+ (void)sendIncomingCallToURL:(NSString*)url withPhoneNumber:(NSString*)phoneNumber;

@end
