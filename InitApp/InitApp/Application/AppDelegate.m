//
//  KMRMAppDelegate.m
//  KimeraMobile
//
//  Created by Massimo Oliviero on 5/27/13.
//  Copyright (c) 2013 Massimo Oliviero. All rights reserved.
//

//#import <BugSense-iOS/BugSenseController.h>


#import "AppDelegate.h"

#import "KMRMHomeViewController.h"
#import "BWQuincyManager.h"

#ifdef TESTFLIGHT
#import "TestFlight.h"
#endif

#import "ServiceLocator.h"
#import "GreenTheme.h"
#import "DefaultTheme.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    /* Crash report */
    
#ifdef BUGSENSE
    //[BugSenseController sharedControllerWithBugSenseAPIKey:@"9b789d60"];
#endif
    
    KMRLog(@"...starting");
    
#ifdef TESTFLIGHT
    KMRLog(@"testflight...starting");
    // !!!: Use the next line only during beta
//    [TestFlight setDeviceIdentifier:[[UIDevice currentDevice] uniqueIdentifier]];
    [TestFlight takeOff:@"82d8b72c-8e1b-4578-b421-fc780a21ff1e"];
#endif
    
    /* Init Crash report*/
    //[[BWQuincyManager sharedQuincyManager] setSubmissionURL:@"http://smarttalk.app.ansv.vn/crash/crash_v300.php"];
    //[[BWQuincyManager sharedQuincyManager] setDelegate:self];

    
    /* Start App Manager */
    [[AppManager sharedInstance] startup];
    
    // Service Locator
    ServiceLocator *serviceLocator = [[ServiceLocator alloc] init];
    [serviceLocator registerProtocol:@protocol(Theme) withClass:[GreenTheme class]];
    
    
    // Theme & Root Controller
    NSObject<Theme> *theme = [serviceLocator getServiceWithProtocol:@protocol(Theme)];
    UINavigationController *navController =  [[UINavigationController alloc] initWithRootViewController:[[KMRMHomeViewController alloc] init]];
    
    
    // Init Interface
    self.interface = [[CYHInterface alloc] initWithTheme:theme navViewController:navController];

    
    // Init Window
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = navController;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
