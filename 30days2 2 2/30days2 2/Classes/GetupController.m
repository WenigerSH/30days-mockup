
#import "GetupController.h"
#import <MediaPlayer/MediaPlayer.h>

@implementation GetupController


-(IBAction)playMovie {
	NSBundle *bundle = [NSBundle mainBundle];
	NSString *moviePath = [bundle pathForResource:@"tutorialmovie" ofType:@"mp4"];
	NSURL *movieURL = [[NSURL fileURLWithPath:moviePath] retain];
	
	MPMoviePlayerViewController *theMovie =[[MPMoviePlayerViewController alloc] initWithContentURL:movieURL];
	
	[self presentModalViewController:theMovie animated:NO];	
}

-(IBAction)startCourse {
	StartGetupController *screen = [[StartGetupController alloc] initWithNibName:nil bundle:nil];
	screen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:screen animated:YES];
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
	
	// Tutorial scroll view
	
	CGRect scrollTutorialViewFrame = CGRectMake(0, 0, 320, 392);
	UIScrollView *scrollTutorialView = [[UIScrollView alloc] initWithFrame:scrollTutorialViewFrame];
	[scrollView addSubview:scrollTutorialView];
	
	CGSize scrollTutorialViewContentSize = CGSizeMake(640, 392);
	[scrollTutorialView setContentSize:scrollTutorialViewContentSize];
	
	[scrollTutorialView setPagingEnabled:YES];
	
	//
	// Tutorials pages
	//
	UIImage *tutorial1Image = [UIImage imageNamed:@"tutorial1.png"];
	UIImageView *tutorial1View = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 392)];
	[tutorial1View setImage:tutorial1Image];
	[scrollTutorialView addSubview:tutorial1View];
	
	UIImage *tutorial2Image = [UIImage imageNamed:@"tutorial2.png"];	
	UIButton *tutorial2Button = [[UIButton alloc]initWithFrame:CGRectMake(320, 0, 320, 392)];
	[tutorial2Button setImage:tutorial2Image forState:UIControlStateNormal];
	[tutorial2Button addTarget:self action:@selector(playMovie) forControlEvents:UIControlEventTouchUpInside];
	[scrollTutorialView addSubview:tutorial2Button];
	
	// Start course button

	UIImage *startCourseImage = [UIImage imageNamed:@"startcourse.png"];	
	UIButton *startCourseButton = [[UIButton alloc]initWithFrame:CGRectMake(100, 420, 120, 37)];
	[startCourseButton setImage:startCourseImage forState:UIControlStateNormal];
	[startCourseButton addTarget:self action:@selector(startCourse) forControlEvents:UIControlEventTouchUpInside];
	[scrollView addSubview:startCourseButton];
	
	
}



@end
