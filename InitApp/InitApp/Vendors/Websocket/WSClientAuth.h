//
//  WebSocketClient.h
//
//
//  Created by Cuongnm on 23/04/14.
//

#import <UIKit/UIKit.h>
#import "WebSocketClient.h"
#import "Constants.h"

@interface WSClientAuth: WebSocketClient{
    bool allowConnect;
}


+ (id)sharedInstance;
- (void) openDefault;
- (void) setAllowConnect:(BOOL)value;
- (BOOL) allowConnect;

@end
