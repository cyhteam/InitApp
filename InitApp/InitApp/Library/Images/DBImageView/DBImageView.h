//
//  DBImageView.h
//  DBImageView
//
//  Created by iBo on 25/08/14.
//  Copyright (c) 2014 Daniele Bogo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DBImageView : UIView
@property (nonatomic, copy) NSString *imageWithPath;
@property (nonatomic, strong) UIImage *placeHolder, *image;

+ (void) triggerImageRequests:(BOOL)start;
+ (void) clearCache;
@end
// Copyright belongs to original author
// http://code4app.net (en) http://code4app.com (cn)
// From the most professional code share website: Code4App.net
