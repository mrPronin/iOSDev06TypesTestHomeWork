//
//  RITAppDelegate.m
//  TypesTestHomework
//
//  Created by Pronin Alexander on 07.01.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import "RITAppDelegate.h"
#import "RITEnumTest.h"

@implementation RITAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    NSLog(@"***01***");
    NSLog(@"------------------------------------------------------------");
    
    RITEnumTest*    obj1 = [[RITEnumTest alloc] init];
    obj1.gender     = RITGenderMale;
    obj1.color      = RITColorGreen;
    obj1.hairColor = RITHairColorRed;
    
    NSLog(@"***02***");
    NSLog(@"------------------------------------------------------------");
    
    NSInteger   randPointCount  = 50;
    NSInteger   fieldWidth      = 10;
    NSInteger   fieldHeight     = 10;
    NSInteger   hitCount        = 0;
    CGRect      targetRect      = CGRectMake(3, 3, 4, 4);
    
    NSMutableArray* points = [[NSMutableArray alloc] init];
    
    for (int i = 1; i<=randPointCount; i++) {
        CGPoint point = CGPointMake(arc4random() % (fieldWidth + 1), arc4random() % (fieldHeight + 1));
        [points addObject:[NSValue valueWithCGPoint:point]];
    }
    
    for (NSValue* value in points) {
        CGPoint point = [value CGPointValue];
        BOOL shotResult = CGRectContainsPoint(targetRect, point);
        if (shotResult) {
            hitCount++;
            NSLog(@"hit = %@", NSStringFromCGPoint(point));
        }
        
    }
    if (hitCount > 0) {
        NSLog(@"Congrats! You hit %d times!", hitCount);
    }
    
    NSLog(@"***03***");
    NSLog(@"------------------------------------------------------------");
    
    NSMutableArray* numbers = [[NSMutableArray alloc] init];
    for (int i=0; i<3; i++) {
        [numbers addObject:[NSNumber numberWithFloat:(CGFloat)arc4random()]];
    }
    
    for (int i=0; i<3; i++) {
        [numbers addObject:[NSNumber numberWithBool:arc4random() % 2]];
    }
    
    for (int i=0; i<3; i++) {
        [numbers addObject:[NSNumber numberWithInteger:arc4random()]];
    }
    
    NSInteger index = 0;
    for (NSNumber* number in numbers) {
        NSLog(@"number = %@", [[numbers objectAtIndex:index] stringValue]);
        index++;
    }
    
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
