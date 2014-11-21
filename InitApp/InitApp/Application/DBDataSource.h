//
//  SMTDatabase.h
//  SmartTalk2
//
//  Created by Nguyen Manh Cuong on 6/4/14.
//
//

#import <Foundation/Foundation.h>
#import "FCModel.h"

@interface DBDataSource : NSObject

@property (retain, nonatomic) FMDatabase *database;

+ (id)sharedInstance;
- (void) initDB;
- (FMDatabase*) getDB;
@end
