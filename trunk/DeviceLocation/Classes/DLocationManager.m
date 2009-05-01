//
//  DLocationManager.m
//  DeviceLocation
//
//  Created by Richard Stelling on 01/05/2009.
//  Copyright 2009 EchoData Management Ltd.. All rights reserved.
//

#import "DLocationManager.h"
//#import <CoreLocation/CLLocationManager.h>

@implementation DLocationManager

@dynamic delegate;

#ifdef TARGET_IPHONE_SIMULATOR

- (id)init
{
	self = [super init];
	
	//Create array of locations
	//locations = [[NSArray alloc] initWithContentsOfFile:LOCATIONS_PATH];
	//[locations retain]
	

	
	return self;
}

- (void)dealloc
{
	//[locations release];
	[spoofed_location release];
	[super dealloc];
}

- (void)startUpdatingLocation
{
	//do not call super
	
	NSString *fake_location = [[NSString alloc] initWithContentsOfFile:LOCATIONS_PATH]; 
	NSArray *latLong = [fake_location componentsSeparatedByString:@","];
	
	CLLocationDegrees lat = [[latLong objectAtIndex:0] doubleValue];
	CLLocationDegrees lon = [[latLong objectAtIndex:1] doubleValue];
	
	spoofed_location = [[CLLocation alloc] initWithLatitude:lat longitude:lon];
	
	[self.delegate locationManager:self
		  didUpdateToLocation:spoofed_location
				 fromLocation:nil];
}

#endif

@end
