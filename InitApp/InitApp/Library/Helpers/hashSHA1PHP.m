//
//  hashSHA1PHP.m
//  GphoneS
//
//  Created by Ly Quoc Chinh on 2/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "hashSHA1PHP.h"

@implementation hashSHA1PHP
-(NSString*) hashsha1php :(NSString*)data{
    NSString *hashkey = data;
    // PHP uses ASCII encoding, not UTF
    const char *s = [hashkey cStringUsingEncoding:NSASCIIStringEncoding];
    NSData *keyData = [NSData dataWithBytes:s length:strlen(s)];
    
    // This is the destination
    uint8_t digest[CC_SHA1_DIGEST_LENGTH] = {0};
    // This one function does an unkeyed SHA1 hash of your hash data
    CC_SHA1(keyData.bytes, keyData.length, digest);
    
    // Now convert to NSData structure to make it usable again
    NSData *out = [NSData dataWithBytes:digest length:CC_SHA1_DIGEST_LENGTH];
    // description converts to hex but puts <> around it and spaces every 4 bytes
    NSString *hash = [out description];
    hash = [hash stringByReplacingOccurrencesOfString:@" " withString:@""];
    hash = [hash stringByReplacingOccurrencesOfString:@"<" withString:@""];
    hash = [hash stringByReplacingOccurrencesOfString:@">" withString:@""];
    return hash;
}
@end
