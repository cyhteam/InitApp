//
//  DBImage.h
//  DBImageView
//
//  Created by iBo on 25/08/14.
//  Copyright (c) 2014 Daniele Bogo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DBImageRequest;
@interface DBImage : NSObject
@property (nonatomic, strong) NSURL *imageURL;
@property (nonatomic, strong) DBImageRequest *imageRequest;

+ (instancetype) imageWithPath:(NSString *)path;
@end
// Copyright belongs to original author
// http://code4app.net (en) http://code4app.com (cn)
// From the most professional code share website: Code4App.net
