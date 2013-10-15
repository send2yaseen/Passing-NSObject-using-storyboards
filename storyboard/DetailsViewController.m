//
//  DetailsViewController.m
//  storyboard
//
//  Created by Mohammed Yaseen on 15/10/13.
//  Copyright (c) 2013 Mohammed Yaseen. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()
@property (strong, nonatomic) IBOutlet UILabel *detailsLabel;

@end

@implementation DetailsViewController
@synthesize CurrentPhoto;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)Dismiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion:Nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.detailsLabel setText:CurrentPhoto.Details];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
