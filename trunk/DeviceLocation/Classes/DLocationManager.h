//
//  DLocationManager.h
//  DeviceLocation
//
//  Created by Richard Stelling on 01/05/2009.
//  Copyright 2009 EchoData Management Ltd.. All rights reserved.
//

#import <CoreLocation/CoreLocation.h>

#define LOCATIONS_PATH @"/absolute/path/to/location/text/file.txt"

@protocol DLocationManagerDelegate;

@interface DLocationManager : CLLocationManager {

#ifdef TARGET_IPHONE_SIMULATOR
	//NSArray *locations;
	//NSString *fake_location;
	CLLocation *spoofed_location;
#endif
	
}

@property(assign, nonatomic) id<DLocationManagerDelegate> delegate;

@end
