//
//  AppDelegate.m
//  ChoresRatings
//
//  Created by Jonathan Laroco on 6/1/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "AppDelegate.h"
#import "Players.h"
#import "PlayersViewController.h"

@implementation AppDelegate
{
    NSMutableArray *_players;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    _players = [NSMutableArray arrayWithCapacity:20];
    
   /* Players *player = [[Players alloc] init];
    player.name = @"Sammy Sosa";
    player.chore = @"Clean the Bathroom";
    player.rating = 3;
    [_players addObject:player];
    
    player = [[Players alloc] init];
    player.name = @"Oscar Smith";
    player.chore = @"Clean the Kitched";
    player.rating = 4;
    [_players addObject:player];
    
    player = [[Players alloc] init];
    player.name = @"Dave Salsa";
    player.chore = @"Clean the Living Room";
    player.rating = 2;
    [_players addObject:player]; */
    
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    UINavigationController *navigationController = [tabBarController viewControllers][0];
    PlayersViewController *playersViewController = [navigationController viewControllers][0];
    playersViewController.players = _players;
    
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
