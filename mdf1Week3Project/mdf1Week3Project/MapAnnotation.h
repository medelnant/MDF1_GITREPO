//
//  MapAnnotation.h
//  mdf1Week3Project
//
//  Created by vAesthetic on 10/14/13.
//  Copyright (c) 2013 medelnant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MapAnnotation : NSObject <MKAnnotation>
{
    //Declare title string
    NSString *title;
    //Declare cooridate
    CLLocationCoordinate2D coordinate;
}

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;
//Read only to stop any attempt to set/change coordinate from outside custom init method
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

//Declare custom init method
-(id)initWithPosition:(CLLocationCoordinate2D)coord;

@end
