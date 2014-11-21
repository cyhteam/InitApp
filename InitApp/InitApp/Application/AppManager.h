//
//  AppManager.h
//  InitApp
//
//  Created by Nguyen Manh Cuong on 11/21/14.
//  Copyright (c) 2014 vnpt-technology.vn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DBDataSource.h"

@interface AppManager : NSObject
@property (retain, nonatomic) DBDataSource *db;

+ (id)sharedInstance;

- (void) startup;
- (FMDatabase*) getDB;

@end
