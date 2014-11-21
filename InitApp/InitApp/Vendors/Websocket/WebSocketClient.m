//
//  WebSocketClient.h
//
//
//  Created by Cuongnm on 23/04/14.
//

#import "WebSocketClient.h"

@interface WebSocketClient ()
    @property (nonatomic, readwrite) SRWebSocket *websocket;
    @property (nonatomic, readwrite) BOOL socketReady;

    @property (nonatomic, readwrite) NSTimer* timer;
    @property (nonatomic, readwrite) NSString* webSocketUrl;
@end

@implementation WebSocketClient

@synthesize delegate;

/* Open connect to websocket server */
- (void) open: (NSString*) url
{
    //only debug
    self.webSocketUrl = url;
    
    [self connect];
    //self.timer = [NSTimer scheduledTimerWithTimeInterval:10.0f target:(self) selector:@selector(countDown) userInfo:nil repeats:YES];
}

/* Create connect to websocket server */
- (void) connect{
    if(self.socketReady == NO){
        if( self.websocket != nil) {
            [self.websocket close];
            self.websocket.delegate = nil;
            [self.websocket release];
            self.websocket = nil;
        }
        
        NSLog(@"Connecting websocket ...");
        self.socketReady = NO;
        self.websocket = [[SRWebSocket alloc] initWithURL:[[[NSURL alloc] initWithString:self.webSocketUrl] autorelease]];
        self.websocket.delegate = self;
        [self.websocket open];
    }
}

- (BOOL) isConnect{
    return self.socketReady;
}

/* Close connection to websocket server*/
- (void) close
{
    [self.websocket close];
    //[self.websocket disconnect];
    self.websocket = nil;
    
    //[self.timer invalidate];
}

/* Send message to server */
- (void) send: (NSString*) message{
    if (self.socketReady) {
        [self.websocket send:message];
    }
}

// SRWebSocket handlers
- (void)webSocket:(SRWebSocket *)webSocket didReceiveMessage:(id)message
{
    [delegate didReceiveMessage: message];
}

- (void)webSocketDidOpen:(SRWebSocket *)webSocket
{
    self.socketReady = YES;
    
    if(self.timer != nil){
        [self.timer invalidate];
        self.timer = nil;
    }
    
    NSLog(@"Connected");
    [delegate onOpen];
}

- (void)webSocket:(SRWebSocket *)webSocket didFailWithError:(NSError *)error {
    
}

- (void)webSocket:(SRWebSocket *)webSocket didCloseWithCode:(NSInteger)code reason:(NSString *)reason wasClean:(BOOL)wasClean
{
    self.socketReady = NO;
    
    if (self.timer == nil) {
        //self.timer = [NSTimer scheduledTimerWithTimeInterval:10.0f target:(self) selector:@selector(countDown) userInfo:nil repeats:YES];
    }
    
    //NSLog(@"Disconnected");
    [delegate onClose];
}

-(void)countDown {
    [self connect];
}

- (void)dealloc {
    [self.websocket release];
    [self.timer release];
    [self.webSocketUrl release];
    
    [super dealloc];
}
@end
