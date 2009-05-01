//
//  DeviceLocationAppDelegate.m
//  DeviceLocation
//
//  Created by Richard Stelling on 01/05/2009.
//  Copyright EchoData Management Ltd. 2009. All rights reserved.
//

#import "DeviceLocationAppDelegate.h"
#import "MyDLocation.h"

@implementation DeviceLocationAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
    [window makeKeyAndVisible];
	
	// Create DLocation objects
	//location = [[MyDLocation alloc] init];
	// NOW CREATED IN IB
	
#ifdef TARGET_IPHONE_SIMULATOR
	[mode setText:@"iPhone Simulator"];
#else
	[mode setText:@"DEVICE"];
#endif
}


- (void)dealloc {
    [window release];
	[location release];
    [super dealloc];
}

- (IBAction)receiveLocation:(id)sender
{
	if([activity isAnimating])
	{
		[recive setTitle:@"Get Location" forState:UIControlStateNormal];
		[activity stopAnimating];
		
		//get location
		[location.locationManager stopUpdatingLocation]; 
		CLLocation *loc = location.currentLocation;
		CLLocationCoordinate2D coord = loc.coordinate;
		
		[latitude setText:[NSString stringWithFormat:@"%f", coord.latitude]];
		[longitude setText:[NSString stringWithFormat:@"%f", coord.longitude]];
	}
	else
	{
		[recive setTitle:@"Cancel..." forState:UIControlStateNormal];
		[activity startAnimating];
		
		//get location
		//[location.locationManager startUpdatingLocation]; 
		[[location locationManager] startUpdatingLocation];
	}
}

@end
