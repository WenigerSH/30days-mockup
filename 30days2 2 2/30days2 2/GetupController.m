//
//  GetupController.m
//
//  Created by Pawel on 13-06-05.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "GetupController.h"

@implementation GetupController

-(IBAction)switchBack {
	[self dismissModalViewControllerAnimated:YES];
}

-(IBAction)startCourse {
	/*StartGetupController *screen = [[StartGetupController alloc] initWithNibName:nil bundle:nil];
	screen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve; 
	[self presentModalViewController:screen animated:NO];
	[screen release];
	 */
	[[StartGetupController sharedStartGetupController] presentModalViewController:<#(UIViewController *)modalViewController#> animated:<#(BOOL)animated#>];
}
@end
