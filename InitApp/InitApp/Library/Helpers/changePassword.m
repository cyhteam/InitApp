//
//  changePassword.m
//  SmartTalk
//
//  Created by Ly Quoc Chinh on 8/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "changePassword.h"
#import <CommonCrypto/CommonDigest.h>
@implementation changePassword
-(NSString*) changePassword :(NSString*)data{
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
    NSLog(@"hash before: %@",hash);
    // get 10 first numbers of hash
    hash = [hash substringToIndex:10];
    NSLog(@"hash after: %@",hash);
    return hash;
}

@end
