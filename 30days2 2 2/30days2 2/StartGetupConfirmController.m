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
	
	UIImage *navImage = [UIImage imageNamed:@"form-bar.png"];
	UIImageView *navView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 40)];
	[navView setImage:navImage];
	[self.view addSubview:navView];
	
	
	UIImage *menuImage = [UIImage imageNamed:@"back.png"];	
	UIImage *menu2Image = [UIImage imageNamed:@"back2.png"];
	UIButton *menuButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 54, 40)];
	[menuButton setImage:menuImage forState:UIControlStateNormal];
	[menuButton setImage:menu2Image forState:UIControlStateHighlighted];
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
	
	UIImage *formImage = [UIImage imageNamed:@"confirm.png"];
	UIImageView *formView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 306)];
	[formView setImage:formImage];
	[scrollView addSubview:formView];
	
	UIImage *form1Image = [UIImage imageNamed:@"menu1.png"];
	UIImageView *form1View = [[UIImageView alloc]initWithFrame:CGRectMake(0, 267, 320, 153)];
	[form1View setImage:form1Image];
	[scrollView addSubview:form1View];
	
	// Start course button
	
	UIImage *nextFormImage = [UIImage imageNamed:@"nextbutton2.png"];
	UIImage *nextForm1Image = [UIImage imageNamed:@"nextbutton1.png"];	
	UIButton *nextFormButton = [[UIButton alloc]initWithFrame:CGRectMake(242, 267, 78, 39)];
	[nextFormButton setImage:nextFormImage forState:UIControlStateNormal];
	[nextFormButton setImage:nextForm1Image forState:UIControlStateHighlighted];
	[nextFormButton addTarget:self action:@selector(switchConfirm) forControlEvents:UIControlEventTouchUpInside];
	[scrollView addSubview:nextFormButton];	
	
}

@end
