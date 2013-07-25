//
//  AppDelegate.h
//  SimpleMegnifire
//
//  Created by Suyash Sadh on 18/07/13.
//  Copyright (c) 2013 Avnish Sharma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{

    UINavigationController *navCon;



}
@property (strong, nonatomic)IBOutlet UIWindow *window;
@property (strong, nonatomic)IBOutlet UINavigationController *navCon;

@end
