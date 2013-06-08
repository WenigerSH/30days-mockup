//
//  _0days2AppDelegate.h
//  30days2
//
//  Created by Pawel on 13-06-04.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class _0days2ViewController;

@interface _0days2AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    _0days2ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet _0days2ViewController *viewController;

@end

