//
//  DBImage.m
//  DBImageView
//
//  Created by iBo on 25/08/14.
//  Copyright (c) 2014 Daniele Bogo. All rights reserved.
//

#import "DBImage.h"
#import "DBImageRequest.h"

@implementation DBImage

+ (instancetype) imageWithPath:(NSString *)path
{
    return [[DBImage alloc] initWithPath:path];
}

- (id) initWithPath:(NSString *)path
{
    self = [super init];
    
    if ( self ) {
        _imageURL = [NSURL URLWithString:path];
    }
    
    return self;
}

- (DBImageRequest *) imageRequest
{
    return [[DBImageRequest alloc] initWithURLRequest:[NSURLRequest requestWithURL:self.imageURL]];
}

@end
// Copyright belongs to original author
// http://code4app.net (en) http://code4app.com (cn)
// From the most professional code share website: Code4App.net
