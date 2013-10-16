//
//  DataManager.h
//  mdf1Week3Project
//
//  Created by vAesthetic on 10/14/13.
//  Copyright (c) 2013 medelnant. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject {
    NSMutableArray * dataArray;
}

@property (nonatomic, strong) NSMutableArray * dataArray;

+(DataManager *)GetDataInstance;
@end
