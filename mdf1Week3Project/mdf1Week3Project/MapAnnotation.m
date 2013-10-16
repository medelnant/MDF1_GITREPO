//
//  MapAnnotation.m
//  mdf1Week3Project
//
//  Created by vAesthetic on 10/14/13.
//  Copyright (c) 2013 medelnant. All rights reserved.
//

#import "MapAnnotation.h"

@implementation MapAnnotation

@synthesize title, subtitle, coordinate;

-(id)initWithPosition:(CLLocationCoordinate2D)coord{
    if ((self = [super init])) {
        coordinate = coord;
    }
    return self;
}

@end
