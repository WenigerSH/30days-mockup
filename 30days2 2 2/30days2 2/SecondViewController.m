//
//  SecondViewController.m
//
//  Created by Pawel on 13-06-04.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController

-(IBAction)switchback {
	[self dismissModalViewControllerAnimated:YES];
}

-(IBAction)switchnext {
	TestView *screen = [[TestView alloc] initWithNibName:nil bundle:nil];
	screen.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:screen animated:YES];
	[screen release];
}
@end
