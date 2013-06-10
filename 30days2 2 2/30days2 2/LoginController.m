//
//  LoginController.m
//
//  Created by Pawel on 13-06-07.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "LoginController.h"

@implementation LoginController

-(IBAction)switchBack {
	[self dismissModalViewControllerAnimated:NO];
}

-(IBAction)switchConfirm {
	_0days2ViewController *screen = [[_0days2ViewController alloc] initWithNibName:nil bundle:nil];
	screen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve; 
	[self presentModalViewController:screen animated:YES];
	[screen release];
	
}


- (void)viewDidLoad {
	[super viewDidLoad];
	UIImage *navImage = [UIImage imageNamed:@"register-bar.png"];
	UIImageView *navView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 40)];
	[navView setImage:navImage];
	[self.view addSubview:navView];
	
	
	UIImage *menuImage = [UIImage imageNamed:@"back.png"];	
	UIButton *menuButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 54, 40)];
	[menuButton setImage:menuImage forState:UIControlStateNormal];
	[menuButton addTarget:self action:@selector(switchBack) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:menuButton];
	
	// Page scroll view
	
	CGRect scrollViewFrame = CGRectMake(0, 40, 320, 420);
	UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:scrollViewFrame];
	[scrollView setBounces:NO];
	[self.view addSubview:scrollView];
	
	CGSize scrollViewContentSize = CGSizeMake(320, 420);
	[scrollView setContentSize:scrollViewContentSize];
	
	[scrollView setPagingEnabled:NO];
	
	UIImage *loginImage = [UIImage imageNamed:@"loginpage.png"];
	UIImageView *loginView = [[UIImageView alloc]initWithFrame:CGRectMake(0, -60, 320, 550)];
	[loginView setImage:loginImage];
	[scrollView addSubview:loginView];
	
	// Confirm button
	
	UIImage *nextFormImage = [UIImage imageNamed:@"nextlogin.png"];	
	UIButton *nextFormButton = [[UIButton alloc]initWithFrame:CGRectMake(172, 295, 80, 41)];
	[nextFormButton setImage:nextFormImage forState:UIControlStateNormal];
	[nextFormButton addTarget:self action:@selector(switchConfirm) forControlEvents:UIControlEventTouchUpInside];
	[scrollView addSubview:nextFormButton];
	
}


@end
