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
	
	CGRect scrollViewFrame = CGRectMake(0, 43, 320, 417);
	UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:scrollViewFrame];
	[self.view addSubview:scrollView];
	
	CGSize scrollViewContentSize = CGSizeMake(320, 507);
	[scrollView setContentSize:scrollViewContentSize];
	
	//
	//Getup view and button
	//
	UIImage *days1Image = [UIImage imageNamed:@"dni1.png"];
	UIImageView *days1View = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 47, 169)];
	[days1View setImage:days1Image];
	[scrollView addSubview:days1View];
	
	UIImage *getup1Image = [UIImage imageNamed:@"ptak1.png"];
	UIImageView *getup1View = [[UIImageView alloc]initWithFrame:CGRectMake(47, 0, 273, 169)];
	[getup1View setImage:getup1Image];
	[scrollView addSubview:getup1View];
	
	UIImage *getup2Image = [UIImage imageNamed:@"ptak2.png"];	
	UIButton *getupButton = [[UIButton alloc]initWithFrame:CGRectMake(47, 0, 273, 169)];
	[getupButton setImage:getup2Image forState:UIControlStateNormal];
	[getupButton setAlpha:0.67];
	[getupButton addTarget:self action:@selector(switchOpenCourse) forControlEvents:UIControlEventTouchUpInside];
	[scrollView addSubview:getupButton];
	
	//
	// Run view and Button
	//
	
	UIImage *days2Image = [UIImage imageNamed:@"dni2.png"];
	UIImageView *days2View = [[UIImageView alloc]initWithFrame:CGRectMake(0, 169, 47, 169)];
	[days2View setImage:days2Image];
	[scrollView addSubview:days2View];
	
	
	UIImage *run1Image = [UIImage imageNamed:@"bieg1.png"];
	UIImageView *run1View = [[UIImageView alloc]initWithFrame:CGRectMake(47, 169, 273, 169)];
	[run1View setImage:run1Image];
	[scrollView addSubview:run1View];
	
	
	UIImage *run2Image = [UIImage imageNamed:@"bieg2.png"];	
	UIButton *runButton = [[UIButton alloc]initWithFrame:CGRectMake(47, 169, 273, 169)];
	[runButton setImage:run2Image forState:UIControlStateNormal];
	[runButton setAlpha:0.67];
	//[runButton addTarget:self action:@selector() forControlEvents:UIControlEventTouchUpInside];
	[scrollView addSubview:runButton];
	
	//
	// Punctuality at work
	//
	
	UIImage *atworkImage = [UIImage imageNamed:@"parwork.png"];	
	UIButton *atworkButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 338, 320, 169)];
	[atworkButton setImage:atworkImage forState:UIControlStateNormal];
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
