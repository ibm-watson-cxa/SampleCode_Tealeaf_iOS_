//
//  AppDelegate.m
//  TL Connect
//
//  Created by Geoff Heeren on 1/10/14.
//
//  Copyright (C) 2017 Acoustic, L.P. All rights reserved.
//
//  NOTICE: This file contains material that is confidential and proprietary to
//  Acoustic, L.P. and/or other developers. No license is granted under any intellectual or
//  industrial property rights of Acoustic, L.P. except as may be provided in an agreement with
//  Acoustic, L.P. Any unauthorized copying or distribution of content from this file is
//  prohibited.
//

#import "AppDelegate.h"
#import <AdSupport/ASIdentifierManager.h>
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
//    setenv("EODebug", "1", 1);
//    setenv("TLF_DEBUG", "1", 1);
    [[TLFApplicationHelper sharedInstance] setCXAAdvertisingId:[[[ASIdentifierManager sharedManager]advertisingIdentifier] UUIDString]];
	[[TLFApplicationHelper sharedInstance] enableTealeafFramework];
    NSMutableDictionary *appData = [[NSMutableDictionary alloc] init];
    [appData setObject:[[NSBundle mainBundle] bundleIdentifier] forKey:@"Application"];
    [appData setObject:[[UIDevice currentDevice] model] forKey:@"Device"];
    [appData setObject:[[UIDevice currentDevice] name] forKey:@"Name"];
	[[TLFCustomEvent sharedInstance] logEvent:@"ApplicationData" values:appData];
    
	NSString *sessionID=[[TLFApplicationHelper sharedInstance] currentSessionId];
	NSLog(@"TLF Session Id: %@", sessionID);
	NSLog(@"System Name:%@",[[UIDevice currentDevice] systemName]);
	NSLog(@"System Version:%@",[[UIDevice currentDevice] systemVersion]);
	NSLog(@"Vendor ID:%@",[[UIDevice currentDevice] identifierForVendor]);
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
