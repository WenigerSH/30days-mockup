//
//  OpenCourseController.m
//
//  Created by Pawel on 13-06-08.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "OpenCourseController.h"

@implementation OpenCourseController


-(IBAction)switchBack {
	[self dismissModalViewControllerAnimated:YES];
}



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[super viewDidLoad];
	
	
	UIImage *navImage = [UIImage imageNamed:@"progress-bar.png"];
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
	
	// Info scroll view
	
	CGRect scrollInfoViewFrame = CGRectMake(0, 320, 320, 100);
	UIScrollView *scrollInfoView = [[UIScrollView alloc] initWithFrame:scrollInfoViewFrame];
	[scrollInfoView setBounces:NO];
	[scrollView addSubview:scrollInfoView];
	
	CGSize scrollTutorialViewContentSize = CGSizeMake(960, 100);
	[scrollInfoView setContentSize:scrollTutorialViewContentSize];
	
	[scrollInfoView setPagingEnabled:YES];
	
	//
	// Info pages
	//
	UIImage *info1Image = [UIImage imageNamed:@"progress-info1.png"];
	UIImageView *info1View = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 100)];
	[info1View setImage:info1Image];
	[scrollInfoView addSubview:info1View];
	
	UIImage *info2Image = [UIImage imageNamed:@"progress-info2.png"];
	UIImageView *info2View = [[UIImageView alloc]initWithFrame:CGRectMake(320, 0, 320, 100)];
	[info2View setImage:info2Image];
	[scrollInfoView addSubview:info2View];
	
	UIImage *info3Image = [UIImage imageNamed:@"progress-info3.png"];
	UIImageView *info3View = [[UIImageView alloc]initWithFrame:CGRectMake(640, 0, 320, 100)];
	[info3View setImage:info3Image];
	[scrollInfoView addSubview:info3View];
	
	// Start course button
	
	UIImage *openCourseImage = [UIImage imageNamed:@"progress.png"];
	UIImageView *openCourseView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 320)];
	[openCourseView setImage:openCourseImage];
	[scrollView addSubview:openCourseView];
	
}


@end
