//
//  UIResponder+Kimera.m
//  KimeraMobile
//
//  Created by Massimo Oliviero on 7/9/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import "UIResponder+CYH.h"

@implementation UIResponder (CYH)

- (CYHInterface *)interface
{
    return self.nextResponder.interface;
}

@end
