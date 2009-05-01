//
//  DeviceLocationAppDelegate.h
//  DeviceLocation
//
//  Created by Richard Stelling on 01/05/2009.
//  Copyright EchoData Management Ltd. 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyDLocation; 

@interface DeviceLocationAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	
	// UI Outlets
	IBOutlet UILabel *mode;
	IBOutlet UILabel *latitude;
	IBOutlet UILabel *longitude;
	IBOutlet UIButton *recive;
	IBOutlet UIActivityIndicatorView *activity;
	
	IBOutlet MyDLocation *location;	
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

- (IBAction)receiveLocation:(id)sender;

@end

