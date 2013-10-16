//
//  LocationDetailViewController.m
//  mdf1Week3Project
//
//  Created by vAesthetic on 10/14/13.
//  Copyright (c) 2013 medelnant. All rights reserved.
//

#import "LocationDetailViewController.h"
#import "MapAnnotation.h"

@interface LocationDetailViewController ()

@end

@implementation LocationDetailViewController



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    //Set text elements
    _cName.text         = [_locationDataObject valueForKey:@"name"];
    _cAddress.text      = [_locationDataObject valueForKey:@"address"];
    _cPhone.text        = [_locationDataObject valueForKey:@"phone"];
    _cWebsite.text      = [_locationDataObject valueForKey:@"website"];
    
    //Map work
    
    //Set Latitude & Longitude
    double cLatitude = [[_locationDataObject valueForKey:@"latitude"] doubleValue];
    double cLongitude = [[_locationDataObject valueForKey:@"longitude"] doubleValue] ;
    
    //Create a default span and zoom level
    MKCoordinateSpan cSpan;
    cSpan.latitudeDelta = 0.50f;
    cSpan.latitudeDelta = 0.50f;
    
    //Set lat and long with my doubles from above
    CLLocationCoordinate2D cLocation;
    cLocation.latitude = cLatitude;
    cLocation.longitude = cLongitude;
    
    //Set region and center with location
    MKCoordinateRegion cRegion;
    cRegion.center = cLocation;
    cRegion.span = cSpan;
    
    //Define annotation and set title attributes
    MapAnnotation *cAnnotation = [[MapAnnotation alloc] initWithPosition:cLocation];
    cAnnotation.title = [_locationDataObject valueForKey:@"name"];
    cAnnotation.subtitle = [_locationDataObject valueForKey:@"website"];
    
    //Add Annotation
    if(cAnnotation != nil) {
        [self.cMapView setRegion:cRegion];
        [self.cMapView addAnnotation:cAnnotation];
    };
    
    [super viewDidLoad];
    
	// Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
