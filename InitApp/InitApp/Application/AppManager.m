//
//  AppManager.m
//  InitApp
//
//  Created by Nguyen Manh Cuong on 11/21/14.
//  Copyright (c) 2014 vnpt-technology.vn. All rights reserved.
//

#import "AppManager.h"

@implementation AppManager

+(id)sharedInstance {
    
    // Fundamental iOS design patterns: SharedInstance (Singleton in Objective C)
    
    static dispatch_once_t p = 0;
    
    __strong static id _sharedObject = nil;
    
    dispatch_once(&p, ^{
        _sharedObject = [[self alloc] init];
    });
    
    return _sharedObject;
}

- (void) startup
{
    /* Init database */
    self.db = [DBDataSource sharedInstance];
    [self.db initDB];
    
    
}

- (FMDatabase*) getDB{
    if(self.db == Nil)return Nil;
    
    return [self.db getDB];
}

@end
