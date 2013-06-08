//
//  StartGetupConfirmController.m
//
//  Created by Pawel on 13-06-05.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "StartGetupConfirmController.h"

@implementation StartGetupConfirmController


-(IBAction)switchBack {
	[self dismissModalViewControllerAnimated:NO];
}

-(IBAction)switchConfirm {
	RegisterPageController *screen = [[RegisterPageController alloc] initWithNibName:nil bundle:nil];
	screen.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal; 
	[self presentModalViewController:screen animated:NO];
	[screen release];
}


- (void)viewDidLoad {
	[super viewDidLoad];
	
	// Page scroll view
	
	CGRect scrollViewFrame = CGRectMake(0, 43, 320, 417);
	UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:scrollViewFrame];
	[self.view addSubview:scrollView];
	
	CGSize scrollViewContentSize = CGSizeMake(320, 507);
	[scrollView setContentSize:scrollViewContentSize];
	
	[scrollView setPagingEnabled:NO];
	
	UIImage *formImage = [UIImage imageNamed:@"confirmpage.png"];
	UIImageView *formView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 507)];
	[formView setImage:formImage];
	[scrollView addSubview:formView];
	
	// Start course button
	
	UIImage *nextFormImage = [UIImage imageNamed:@"nextform1.png"];	
	UIButton *nextFormButton = [[UIButton alloc]initWithFrame:CGRectMake(242, 302, 78, 38)];
	[nextFormButton setImage:nextFormImage forState:UIControlStateNormal];
	[nextFormButton addTarget:self action:@selector(switchConfirm) forControlEvents:UIControlEventTouchUpInside];
	[scrollView addSubview:nextFormButton];
	
	
}

@end
