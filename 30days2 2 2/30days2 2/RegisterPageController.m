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
	
	UIImage *formImage = [UIImage imageNamed:@"register2.png"];
	UIImageView *formView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 306)];
	[formView setImage:formImage];
	[scrollView addSubview:formView];
	
	UIImage *form1Image = [UIImage imageNamed:@"registermenu2.png"];
	UIImageView *form1View = [[UIImageView alloc]initWithFrame:CGRectMake(0, 267, 320, 153)];
	[form1View setImage:form1Image];
	[scrollView addSubview:form1View];
	
	// next button
	
	UIImage *nextFormImage = [UIImage imageNamed:@"nextbutton2.png"];
	UIImage *nextForm1Image = [UIImage imageNamed:@"nextbutton1.png"];	
	UIButton *nextFormButton = [[UIButton alloc]initWithFrame:CGRectMake(242, 267, 78, 39)];
	[nextFormButton setImage:nextFormImage forState:UIControlStateNormal];
	[nextFormButton setImage:nextForm1Image forState:UIControlStateHighlighted];
	[nextFormButton addTarget:self action:@selector(switchConfirm) forControlEvents:UIControlEventTouchUpInside];
	[scrollView addSubview:nextFormButton];	
	
	// Sign in button
	
	UIImage *signinImage = [UIImage imageNamed:@"signin.png"];	
	UIImage *signin2Image = [UIImage imageNamed:@"signin2.png"];	
	UIButton *signinButton = [[UIButton alloc]initWithFrame:CGRectMake(111, 360, 102, 33)];
	[signinButton setImage:signinImage forState:UIControlStateNormal];
	[signinButton setImage:signin2Image forState:UIControlStateHighlighted];
	[signinButton addTarget:self action:@selector(switchLogin) forControlEvents:UIControlEventTouchUpInside];
	[scrollView addSubview:signinButton];
	
}


@end
