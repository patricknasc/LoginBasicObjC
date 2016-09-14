//
//  AppDelegate.h
//  LoginBasic
//
//  Created by Patrick Nascimento on 14/09/16.
//  Copyright © 2016 patrix. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

