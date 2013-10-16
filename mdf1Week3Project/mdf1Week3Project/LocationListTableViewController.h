//
//  LocationListTableViewController.h
//  mdf1Week3Project
//
//  Created by vAesthetic on 10/14/13.
//  Copyright (c) 2013 medelnant. All rights reserved.
//

#import <UIKit/UIKit.h>
//Import singleton
#import "DataManager.h"

@interface LocationListTableViewController : UITableViewController {

}

//Create singleton locations holder
@property (nonatomic, strong) DataManager *courseList;

@end
