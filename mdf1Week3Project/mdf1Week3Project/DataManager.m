//
//  DataManager.m
//  mdf1Week3Project
//
//  Created by vAesthetic on 10/14/13.
//  Copyright (c) 2013 medelnant. All rights reserved.
//

#import "DataManager.h"

//Import Singleton
#import "DataManager.h"

@implementation DataManager

@synthesize dataArray;

static DataManager * _instance = nil;

+(DataManager *)GetDataInstance {
    @synchronized(self) {
        if (_instance == nil) {
            //Allocate and initialize singleton
            _instance = [[self alloc] init];
            //NSLog(@"From inside if _instance, GetInstance is getting hit");
        }
        return _instance;
    }
}

//Override default alloc
+(id)alloc {
    
    _instance = [super alloc];
    
    return _instance;
}

//Initialize singleton with NSArrays of location info
-(id)init {
    if (self = [super init]) {
        
        //Alloc path to propery list to NSString
        NSString *myListPath = [[NSBundle mainBundle] pathForResource:@"courses" ofType:@"plist"];
        
        //Initialize mutable array with data from property list
        self.dataArray = [[NSMutableArray alloc]initWithContentsOfFile:myListPath];
        NSLog(@"------------------------------------");
        NSLog(@"Within Singleton");
        NSLog(@"------------------------------------");        
        NSLog(@"%@",self.dataArray);
    
    }
    
    return self;
}

@end
