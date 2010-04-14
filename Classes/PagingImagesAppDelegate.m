//
//  PagingImagesAppDelegate.m
//  PagingImages
//
//  Created by Van Charles Tran on 14/04/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "PagingImagesAppDelegate.h"
#import "PagingImagesViewController.h"

@implementation PagingImagesAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
