//
//  WebSocketClient.h
//
//
//  Created by Cuongnm on 23/04/14.
//

#import "WSClientAuth.h"


@implementation WSClientAuth

+(id)sharedInstance {
    
    // Fundamental iOS design patterns: SharedInstance (Singleton in Objective C)
    
    static dispatch_once_t p = 0;
    
    __strong static id _sharedObject = nil;
    
    dispatch_once(&p, ^{
        _sharedObject = [[self alloc] init];
        [_sharedObject setAllowConnect:FALSE];
    });
    
    return _sharedObject;
}

- (void) openDefault
{
    if(allowConnect == TRUE){
        //[super open:@"http://smarttalk.app.ansv.vn:3000"];
        [super open:CONST_SERVER_AUTHENTICATION];
    }
}

- (void) setAllowConnect:(BOOL)value{
    allowConnect = value;
}

- (BOOL) allowConnect{
    return allowConnect;
}

@end
