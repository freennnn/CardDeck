//
//  APAppDelegate.m
//  CardDeck
//
//  Created by alexander.pranevich on 6/17/14.
//  Copyright (c) 2014 Alexander Pronevich. All rights reserved.
//

#import "APAppDelegate.h"
#import "APDeck.h"

@implementation APAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    APDeck *deck = [[APDeck alloc] init];
    APCard *card1 = [deck deal];
    APCard *card2 = [deck deal];
    NSLog(@"card1 = %@", [card1 stringRepresentation]);
    NSLog(@"card2 = %@", [card2 stringRepresentation]);
    NSLog(@"deck remain cards count = %d", [deck.cards count]);
    NSLog(@"does deck contain card1? %d", [deck.cards containsObject:card1]);
    NSLog(@"does deck contain card2? %d", [deck.cards containsObject:card2]);
    
    [deck shuffle];
    APCard *card3 = [deck deal];
    APCard *card4 = [deck deal];
    NSLog(@"card3 = %@", [card3 stringRepresentation]);
    NSLog(@"card4 = %@", [card4 stringRepresentation]);
    NSLog(@"deck remain cards count = %d", [deck.cards count]);
    NSLog(@"does deck contain card3? %d", [deck.cards containsObject:card3]);
    NSLog(@"does deck contain card4? %d", [deck.cards containsObject:card4]);
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
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
