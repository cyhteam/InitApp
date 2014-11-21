//
//  hashSHA1PHP.h
//  GphoneS
//
//  Created by Ly Quoc Chinh on 2/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>
@interface hashSHA1PHP : NSObject
-(NSString*) hashsha1php :(NSString*)data;
@end
