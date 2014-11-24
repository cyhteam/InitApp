//
//  DBImageRequest.h
//  DBImageView
//
//  Created by iBo on 25/08/14.
//  Copyright (c) 2014 Daniele Bogo. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^DBRequestSuccessHandler)(UIImage *image, NSHTTPURLResponse *response);
typedef void (^DBRequestErrorHandler)(NSError *error);

@interface DBImageRequest : NSObject

- (id) initWithURLRequest:(NSURLRequest*)request;
- (void) downloadImageWithSuccess:(DBRequestSuccessHandler)success error:(DBRequestErrorHandler)error;
- (void) cancel;

@end
// Copyright belongs to original author
// http://code4app.net (en) http://code4app.com (cn)
// From the most professional code share website: Code4App.net
