//
//  LocationDetailViewController.h
//  mdf1Week3Project
//
//  Created by vAesthetic on 10/14/13.
//  Copyright (c) 2013 medelnant. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface LocationDetailViewController : UIViewController {

}

//Define properties for synthesis (getters/setters)
@property (strong) NSMutableArray * locationDataObject;


@property (strong, nonatomic) IBOutlet MKMapView *cMapView;
@property (strong, nonatomic) IBOutlet UILabel *cName;
@property (strong, nonatomic) IBOutlet UILabel *cAddress;
@property (strong, nonatomic) IBOutlet UILabel *cPhone;
@property (strong, nonatomic) IBOutlet UILabel *cWebsite;


@end
