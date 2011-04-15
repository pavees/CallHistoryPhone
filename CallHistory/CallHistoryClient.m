//
//  CallHistoryClient.m
//  CallHistory
//
//  Created by Ron Leisti on 11-04-13.
//  Copyright 2011 Ron Leisti. All rights reserved.
//

#import "CallHistoryClient.h"
#import <Foundation/NSUrl.h>
#import <Foundation/NSUrlRequest.h>

NSString* const CallHistoryServerPOSTUrl = @"http://empty-fog-520.heroku.com/incoming_calls";

@implementation CallHistoryClient

// Returns a string representation of the current date and time, in a format accepted by the server.
+ (NSString*)formattedNow
{
    // Initialize a date formatter
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MMM d y HH:mm:ss"];
    
    // Construct the formatted date
    NSString* formattedDate = [dateFormatter stringFromDate:[NSDate date]];
    
    // Release resources
    [dateFormatter release];
    
    return formattedDate;
}

// Sends an incoming call POST request to a CallHistory server
+ (void)sendIncomingCallToURL:(NSString*)url withPhoneNumber:(NSString*)phoneNumber
{
    // Create and configure a request
    NSURL* urlObject = [NSURL URLWithString:url];
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:urlObject];
    [request setHTTPMethod:@"POST"];
    [request addValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    
    // Setup the request body (POST parameters)
    NSString* formattedNow = [CallHistoryClient formattedNow];
    NSString* requestBody = [[NSString alloc] initWithFormat:@"number=%@&occurred_at=%@", phoneNumber, formattedNow];
    [request setHTTPBody:[requestBody dataUsingEncoding:NSUTF8StringEncoding]];
    
    // Create and execute the connection
    NSURLConnection* connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    
    // Release resources
    [requestBody release];
    [connection release];
}


@end
