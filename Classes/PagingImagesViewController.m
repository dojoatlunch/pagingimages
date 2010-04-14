//
//  PagingImagesViewController.m
//  PagingImages
//
//  Created by Van Charles Tran on 14/04/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "PagingImagesViewController.h"

@implementation PagingImagesViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/


- (UIImageView *) createViewForImageNamed:(NSString*)imageName atOffset:(int)offset {
	UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]];
	CGRect imageFrame = imageView.frame;
	imageFrame.origin = CGPointMake(offset, 0);
	imageView.frame = imageFrame;
	return imageView;
}

// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
	[super loadView];

	NSString *path = [[NSBundle mainBundle] pathForResource:@"Files" ofType:@"plist"];
	
	NSArray * imagesNames = [NSArray arrayWithContentsOfFile:path];

	int offset = 0;
	
	for (NSString * imageName in imagesNames) {
		UIImageView *imageView = [self createViewForImageNamed:imageName atOffset:offset];
		[self.view addSubview:imageView];
		offset += imageView.frame.size.width;
	}
	
	UIScrollView *scrollView = (UIScrollView *)self.view;
	scrollView.pagingEnabled = YES;
	scrollView.contentSize = CGSizeMake(offset, self.view.frame.size.height);
}



/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
