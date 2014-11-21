//
//  getOSData.m
//  linphone
//
//  Created by Tuan Viet Do on 5/13/13.
//
//

#import "getOSData.h"

@implementation getOSData

-(NSMutableDictionary*)getAuthenticationData{
//[SmartTalk2.0-Others] return simCode = MCC + MNC;
//                             phoneCode = phoneUniqueIdentifier ;
//                             MSISDN

    CTTelephonyNetworkInfo *networkInfo = [[[CTTelephonyNetworkInfo alloc] init] autorelease];
    CTCarrier *carrier = [networkInfo subscriberCellularProvider];
    NSString *mcc = [carrier mobileCountryCode];
    NSLog(@"Mobile Country Code (MCC): %@", mcc);
    NSString *mnc = [carrier mobileNetworkCode];
    NSLog(@"Mobile Network Code (MNC): %@", mnc);
    NSString* simCode = [NSString stringWithFormat:@"%@%@",mcc,mnc];
    NSString* phoneUniqueIdentifier = @"";
    phoneUniqueIdentifier = [[NSUserDefaults standardUserDefaults] objectForKey:@"udid"];
    if(!([phoneUniqueIdentifier length]>0)){
    phoneUniqueIdentifier = [self generateRandomString:25];
    [[NSUserDefaults standardUserDefaults] setObject:phoneUniqueIdentifier forKey:@"udid"];
    }
    NSLog(@"udid %@",phoneUniqueIdentifier);
    //NSString *phoneUniqueIdentifier = [[UIDevice currentDevice] uniqueIdentifier];
    // get MSISDN
    NSString* msisdn=[[NSUserDefaults standardUserDefaults] stringForKey:@"msisdn_account"];
    NSMutableDictionary* data = [[[NSMutableDictionary alloc] init] autorelease];
    [data setValue:simCode forKey:@"simCode"];
    [data setValue:phoneUniqueIdentifier forKey:@"phoneCode"];
    [data setValue:msisdn forKey:@"msisdn"];
    return data;
}

-(NSString*)generateRandomString:(int)num {
    NSMutableString* string = [NSMutableString stringWithCapacity:num];
    for (int i = 0; i < num; i++) {
        [string appendFormat:@"%C", (unichar)('a' + arc4random_uniform(25))];
    }
    return string;
}

@end
