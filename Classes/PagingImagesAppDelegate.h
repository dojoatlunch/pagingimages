//
//  PagingImagesAppDelegate.h
//  PagingImages
//
//  Created by Van Charles Tran on 14/04/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PagingImagesViewController;

@interface PagingImagesAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    PagingImagesViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet PagingImagesViewController *viewController;

@end

