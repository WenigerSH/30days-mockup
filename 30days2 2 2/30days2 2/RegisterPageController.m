//
//  RegisterPageController.m
//
//  Created by Pawel on 13-06-07.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "RegisterPageController.h"

@implementation RegisterPageController


-(IBAction)switchBack {
	[self dismissModalViewControllerAnimated:NO];
}

-(IBAction)switchConfirm {
	_0days2ViewController *screen = [[_0days2ViewController alloc] initWithNibName:nil bundle:nil];
	screen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve; 
	[self presentModalViewController:screen animated:YES];
	[screen release];
}

-(IBAction)switchLogin {
	LoginController *screen = [[LoginController alloc] initWithNibName:nil bundle:nil];
	screen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve; 
	[self presentModalViewController:screen animated:YES];
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
	
	UIImage *formImage = [UIImage imageNamed:@"registerpage2.png"];
	UIImageView *formView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 507)];
	[formView setImage:formImage];
	[scrollView addSubview:formView];
	
	// Next button
	
	UIImage *nextFormImage = [UIImage imageNamed:@"nextform1.png"];	
	UIButton *nextFormButton = [[UIButton alloc]initWithFrame:CGRectMake(242, 302, 78, 38)];
	[nextFormButton setImage:nextFormImage forState:UIControlStateNormal];
	[nextFormButton addTarget:self action:@selector(switchConfirm) forControlEvents:UIControlEventTouchUpInside];
	[scrollView addSubview:nextFormButton];
	
	// Sign in button
	
	UIImage *signinImage = [UIImage imageNamed:@"signin.png"];	
	UIButton *signinButton = [[UIButton alloc]initWithFrame:CGRectMake(109, 428, 102, 33)];
	[signinButton setImage:signinImage forState:UIControlStateNormal];
	[signinButton addTarget:self action:@selector(switchLogin) forControlEvents:UIControlEventTouchUpInside];
	[scrollView addSubview:signinButton];
	
}


@end
