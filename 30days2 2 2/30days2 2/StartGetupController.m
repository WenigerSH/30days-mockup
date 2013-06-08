//
//  StartGetupController.m
//
//  Created by Pawel on 13-06-05.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "StartGetupController.h"


@implementation StartGetupController


-(IBAction)switchOk {
	StartGetupConfirmController *screen = [[StartGetupConfirmController alloc] initWithNibName:nil bundle:nil];
	screen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve; 
	[self presentModalViewController:screen animated:NO];
	[screen release];
}

-(IBAction)switchBack {
	[self dismissModalViewControllerAnimated:YES];
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[super viewDidLoad];
	
	// Page scroll view
	
	CGRect scrollViewFrame = CGRectMake(0, 43, 320, 417);
	UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:scrollViewFrame];
	[self.view addSubview:scrollView];
	
	CGSize scrollViewContentSize = CGSizeMake(320, 507);
	[scrollView setContentSize:scrollViewContentSize];
	
	[scrollView setPagingEnabled:NO];
	
	UIImage *formImage = [UIImage imageNamed:@"form1.png"];
	UIImageView *formView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 507)];
	[formView setImage:formImage];
	[scrollView addSubview:formView];
	
	// Start course button
	
	UIImage *nextFormImage = [UIImage imageNamed:@"nextform1.png"];	
	UIButton *nextFormButton = [[UIButton alloc]initWithFrame:CGRectMake(242, 302, 78, 38)];
	[nextFormButton setImage:nextFormImage forState:UIControlStateNormal];
	[nextFormButton addTarget:self action:@selector(switchOk) forControlEvents:UIControlEventTouchUpInside];
	[scrollView addSubview:nextFormButton];
	
	
}


@end
