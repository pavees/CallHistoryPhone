//
//  CallHistoryViewController.h
//  CallHistory
//
//  Created by Ron Leisti on 11-04-10.
//  Copyright 2011 Ron Leisti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CallHistoryViewController : UIViewController {
    
}

@property (nonatomic, retain) IBOutlet UITextField *phoneNumber;

- (IBAction)sendCall:(id)sender;

@end
