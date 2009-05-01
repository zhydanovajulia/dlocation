//
//  MyDLocationDelegate.h
//  DeviceLocation
//
//  Created by Richard Stelling on 01/05/2009.
//  Copyright 2009 EchoData Management Ltd.. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DLocationManagerDelegate.h"

@class DLocationManager;

@interface MyDLocation : NSObject <DLocationManagerDelegate>
{
	DLocationManager *locationManager;
	id delegate;
	
	CLLocation *currentLocation;
}

@property (nonatomic, retain) DLocationManager *locationManager;
//@property (nonatomic,assign) id <MyDLocationDelegate> delegate;
@property (nonatomic,assign) id delegate;
@property (copy) CLLocation *currentLocation;

@end
