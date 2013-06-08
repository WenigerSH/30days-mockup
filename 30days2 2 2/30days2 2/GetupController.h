//
//  GetupController.h
//
//  Created by Pawel on 13-06-05.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "StartGetupController.h"

@interface GetupController : UIViewController {
	/*UIWindow *window;
	IBOutlet UIScrollView *scrollView;
	IBOutlet UIPageControl *pageControl;
	NSMutableArray *viewControllers;
	Bool pageControlUsed;*/
}
/*
@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) UIScrollView *scrollView;
@property (nonatomic, retain) UIPageControl *pageControl;
@property (nonatomic, retain) NSMutableArray *viewControllers;

-(IBAction)changePage:(id)sender;
*/
-(IBAction)switchBack;
-(IBAction)startCourse;
-(IBAction)startMovie;

@end
