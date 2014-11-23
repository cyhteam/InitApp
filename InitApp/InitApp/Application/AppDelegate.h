//
//  KMRMAppDelegate.h
//  KimeraMobile
//
//  Created by Massimo Oliviero on 5/27/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MSDynamicsDrawerViewController;

#import "UIResponder+CYH.h"
#import "CYHInterface.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) CYHInterface *interface;
@property (strong, nonatomic) MSDynamicsDrawerViewController *dynamicsDrawerViewController;

@end
