//
//  _0days2ViewController.m
//  30days2
//
//  Created by Pawel on 13-06-04.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "_0days2ViewController.h"

@implementation _0days2ViewController

-(IBAction)switchOpenCourse {
	OpenCourseController *screen = [[OpenCourseController alloc] initWithNibName:nil bundle:nil];
	screen.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:screen animated:YES];
	[screen release];
}

-(IBAction)switchGetup {

	GetupController *screen = [[GetupController alloc] initWithNibName:nil bundle:nil];
	screen.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	[self presentModalViewController:screen animated:YES];
	[screen release];
	
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[super viewDidLoad];
	
	UIImage *navImage = [UIImage imageNamed:@"30bar.png"];
	UIImageView *navView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 40)];
	[navView setImage:navImage];
	[self.view addSubview:navView];
	
	
	UIImage *menuImage = [UIImage imageNamed:@"menu.png"];	
	UIButton *menuButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 43, 40)];
	[menuButton setImage:menuImage forState:UIControlStateNormal];
	//[menuButton addTarget:self action:@selector(switchOpenCourse) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:menuButton];
	
	
	CGRect scrollViewFrame = CGRectMake(0, 40, 320, 420);
	UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:scrollViewFrame];
	[scrollView setBounces:NO];
	[self.view addSubview:scrollView];
	
	CGSize scrollViewContentSize = CGSizeMake(320, 420);
	[scrollView setContentSize:scrollViewContentSize];
	
	//
	//Getup view and button
	//
	
	UIImage *getup1Image = [UIImage imageNamed:@"getup1.png"];
	UIImage *getup2Image = [UIImage imageNamed:@"getup2.png"];
	UIButton *getupButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 320, 141)];
	[getupButton setImage:getup1Image forState:UIControlStateNormal];
	[getupButton setImage:getup2Image forState:UIControlStateHighlighted];
	[getupButton addTarget:self action:@selector(switchOpenCourse) forControlEvents:UIControlEventTouchUpInside];
	[scrollView addSubview:getupButton];
	
	//
	// Run view and Button
	//
	
	UIImage *run1Image = [UIImage imageNamed:@"run1.png"];
	UIImage *run2Image = [UIImage imageNamed:@"run2.png"];	
	UIButton *runButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 141, 320, 141)];
	[runButton setImage:run1Image forState:UIControlStateNormal];
	[runButton setImage:run2Image forState:UIControlStateHighlighted];
	[runButton addTarget:self action:@selector(switchOpenCourse) forControlEvents:UIControlEventTouchUpInside];
	[scrollView addSubview:runButton];
	
	//
	// Punctuality at work
	//
	
	UIImage *atworkImage = [UIImage imageNamed:@"punctuality1.png"];
	UIImage *atwork2Image = [UIImage imageNamed:@"punctuality2.png"];	
	UIButton *atworkButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 282, 320, 141)];
	[atworkButton setImage:atworkImage forState:UIControlStateNormal];
	[atworkButton setImage:atwork2Image forState:UIControlStateHighlighted];
	[atworkButton addTarget:self action:@selector(switchGetup) forControlEvents:UIControlEventTouchUpInside];
	[scrollView addSubview:atworkButton];
	
	[scrollView setPagingEnabled:NO];
	
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
