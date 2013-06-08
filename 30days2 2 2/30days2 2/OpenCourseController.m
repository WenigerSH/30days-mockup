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
	
	// Page scroll view
	
	CGRect scrollViewFrame = CGRectMake(0, 43, 320, 417);
	UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:scrollViewFrame];
	[self.view addSubview:scrollView];
	
	CGSize scrollViewContentSize = CGSizeMake(320, 550);
	[scrollView setContentSize:scrollViewContentSize];
	
	[scrollView setPagingEnabled:NO];
	
	// Info scroll view
	
	CGRect scrollInfoViewFrame = CGRectMake(0, 420, 320, 130);
	UIScrollView *scrollInfoView = [[UIScrollView alloc] initWithFrame:scrollInfoViewFrame];
	[scrollView addSubview:scrollInfoView];
	
	CGSize scrollTutorialViewContentSize = CGSizeMake(960, 130);
	[scrollInfoView setContentSize:scrollTutorialViewContentSize];
	
	[scrollInfoView setPagingEnabled:YES];
	
	//
	// Info pages
	//
	UIImage *info1Image = [UIImage imageNamed:@"opencourseinfo1.png"];
	UIImageView *info1View = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 130)];
	[info1View setImage:info1Image];
	[scrollInfoView addSubview:info1View];
	
	UIImage *info2Image = [UIImage imageNamed:@"opencourseinfo2.png"];
	UIImageView *info2View = [[UIImageView alloc]initWithFrame:CGRectMake(320, 0, 320, 130)];
	[info2View setImage:info2Image];
	[scrollInfoView addSubview:info2View];
	
	UIImage *info3Image = [UIImage imageNamed:@"opencourseinfo3.png"];
	UIImageView *info3View = [[UIImageView alloc]initWithFrame:CGRectMake(640, 0, 320, 130)];
	[info3View setImage:info3Image];
	[scrollInfoView addSubview:info3View];
	
	// Start course button
	
	UIImage *openCourseImage = [UIImage imageNamed:@"opencoursepage.png"];
	UIImageView *openCourseView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 420)];
	[openCourseView setImage:openCourseImage];
	[scrollView addSubview:openCourseView];
	
}


@end
