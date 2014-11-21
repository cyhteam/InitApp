//
//  UIResponder+Kimera.h
//  KimeraMobile
//
//  Created by Massimo Oliviero on 7/9/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CYHInterface.h"

@interface UIResponder (CYH)

@property (nonatomic, strong, readonly) CYHInterface *interface;

@end
