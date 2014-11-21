//
//  WebSocketClient.h
//
//
//  Created by Cuongnm on 23/04/14.
//

#import <UIKit/UIKit.h>
#import "SRWebSocket.h"

@protocol WebSocketClientDelegate;

@interface WebSocketClient : NSObject <SRWebSocketDelegate>{
    id<WebSocketClientDelegate> delegate;
}

@property (nonatomic, assign) id<WebSocketClientDelegate> delegate;

- (void) open: (NSString*) url;
- (void) connect;
- (void) close;
- (void) send: (NSString*) message;
- (BOOL) isConnect;

@end

@protocol WebSocketClientDelegate <NSObject>
-(void) didReceiveMessage:(id)message;
-(void) onOpen;
-(void) onClose;
@end