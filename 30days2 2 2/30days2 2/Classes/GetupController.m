
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
	
	UIImage *navImage = [UIImage imageNamed:@"bar.png"];
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
	
	// Tutorial scroll view
	
	CGRect scrollTutorialViewFrame = CGRectMake(0, 0, 320, 345);
	UIScrollView *scrollTutorialView = [[UIScrollView alloc] initWithFrame:scrollTutorialViewFrame];
	[scrollTutorialView setBounces:YES];
	[scrollView addSubview:scrollTutorialView];
	
	CGSize scrollTutorialViewContentSize = CGSizeMake(640, 345);
	[scrollTutorialView setContentSize:scrollTutorialViewContentSize];
	
	[scrollTutorialView setPagingEnabled:YES];
	
	//
	// Tutorials pages
	//
	UIImage *tutorial1Image = [UIImage imageNamed:@"info1.png"];
	UIImageView *tutorial1View = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 345)];
	[tutorial1View setImage:tutorial1Image];
	[scrollTutorialView addSubview:tutorial1View];
	
	UIImage *tutorial2Image = [UIImage imageNamed:@"info2.png"];	
	UIButton *tutorial2Button = [[UIButton alloc]initWithFrame:CGRectMake(320, 0, 320, 345)];
	[tutorial2Button setImage:tutorial2Image forState:UIControlStateNormal];
	[tutorial2Button addTarget:self action:@selector(playMovie) forControlEvents:UIControlEventTouchUpInside];
	[scrollTutorialView addSubview:tutorial2Button];
	
	// Start course button

	UIImage *startCourseImage = [UIImage imageNamed:@"start.png"];	
	UIImage *startCourse2Image = [UIImage imageNamed:@"start2.png"];
	UIButton *startCourseButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 345, 320, 75)];
	[startCourseButton setImage:startCourseImage forState:UIControlStateNormal];
	[startCourseButton setImage:startCourse2Image forState:UIControlStateHighlighted];
	[startCourseButton addTarget:self action:@selector(startCourse) forControlEvents:UIControlEventTouchUpInside];
	[scrollView addSubview:startCourseButton];
	
	
}



@end
