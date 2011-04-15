//
//  CallHistoryViewController.m
//  CallHistory
//
//  Created by Ron Leisti on 11-04-10.
//  Copyright 2011 Ron Leisti. All rights reserved.
//

#import "CallHistoryViewController.h"
#import "CallHistoryClient.h"

@implementation CallHistoryViewController

@synthesize phoneNumber=_phoneNumber;

// Handles the 'send' button; sends the user-entered telephone number to the
// CallHandler server.
- (IBAction)sendCall:(id)sender
{
    [CallHistoryClient sendIncomingCallToURL:CallHistoryServerPOSTUrl withPhoneNumber:[_phoneNumber text]];  
    [_phoneNumber setText:@""];
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
