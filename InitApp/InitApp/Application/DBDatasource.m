//
//  SMTDatabase.m
//  SmartTalk2
//
//  Created by Nguyen Manh Cuong on 6/4/14.
//
//

#import "DBDataSource.h"

@implementation DBDataSource

@synthesize database;

+(id)sharedInstance {
    
    // Fundamental iOS design patterns: SharedInstance (Singleton in Objective C)
    
    static dispatch_once_t p = 0;
    
    __strong static id _sharedObject = nil;
    
    dispatch_once(&p, ^{
        _sharedObject = [[self alloc] init];
    });
    
    return _sharedObject;
}

/* Open and Create table if not exist */
- (void) initDB
{
    NSString *dbPath = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0] stringByAppendingPathComponent:CONST_DATABASE_NAME];
    //NSLog(@"DB path: %@", dbPath);
    
    //NSFileManager *filemgr = [NSFileManager defaultManager];
    
    //if ([filemgr fileExistsAtPath: dbPath ] == NO){
        [FCModel openDatabaseAtPath:dbPath withSchemaBuilder:^(FMDatabase *db, int *schemaVersion) {
            [db setCrashOnErrors:YES];
            //db.traceExecution = YES; // Log every query (useful to learn what FCModel is doing or analyze performance)
            [db beginTransaction];
            
            void (^failedAt)(int statement) = ^(int statement){
                int lastErrorCode = db.lastErrorCode;
                NSString *lastErrorMessage = db.lastErrorMessage;
                [db rollback];
                NSAssert3(0, @"Migration statement %d failed, code %d: %@", statement, lastErrorCode, lastErrorMessage);
            };
            
            if (*schemaVersion < 1) {
                //create messages table to save messages
                //NSString* sql = @"CREATE TABLE IF NOT EXISTS ChatMessage (id INTEGER PRIMARY KEY AUTOINCREMENT, messageID, jid TEXT, user TEXT,resource TEXT,text TEXT, image BLOB, action TEXT,timestamp INTEGER,delay_timestamp INTEGER,incoming BOOLEAN,read BOOLEAN,sent BOOLEAN,error BOOLEAN,tag TEXT); CREATE INDEX TEXT_INDEX ON ChatMessage (text);";
                
                //if (! [db executeUpdate:sql]) failedAt(1);
                
                //*schemaVersion = 1;
            }
            
            [db commit];
            
            DBDataSource *SMTModel = [DBDataSource sharedInstance];
            SMTModel.database = db;
            
        }];
    //}
    
    [FCModel inDatabaseSync:^(FMDatabase *db) {
        
    }];
}

- (FMDatabase*) getDB{
    return self.database;
}
@end
