//
//  CYHInterface.h
//  KimeraMobile
//
//  Created by Massimo Oliviero on 7/9/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Theme.h"

@interface CYHInterface : NSObject

// properties
@property (nonatomic, readonly) NSObject<Theme> *theme;
@property (nonatomic, readonly) UINavigationController *navViewController;

// initializers
- (instancetype)initWithTheme:(NSObject<Theme> *)theme navViewController:(UINavigationController *)navViewController;

@end
