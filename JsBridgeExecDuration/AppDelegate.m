//
//  AppDelegate.m
//  JsBridgeExecDuration
//
//  Created by asml on 2018/11/15.
//  Copyright © 2018 asml. All rights reserved.
//

#import "AppDelegate.h"
#import "LDSModuleViewController.h"
#import "HTTPServer.h"
@interface AppDelegate ()
{
    HTTPServer *_httpServer;
}
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    
    _httpServer = [[HTTPServer alloc] init];
    [_httpServer setType:@"_http._tcp."];
    [_httpServer setPort:5565];
    [_httpServer setConnectionClass:NSClassFromString(@"JSBridgeConnection")];
    [_httpServer setDocumentRoot:[[NSBundle mainBundle] pathForResource:@"build" ofType:nil]];
    NSError *error = nil;
    [_httpServer start:&error];
    self.window = [[UIWindow alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    LDSModuleViewController *mvc = [LDSModuleViewController new];
    mvc.url = @"http://172.24.27.30:3000";
    //    mvc.filepath = @"";
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:mvc];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
