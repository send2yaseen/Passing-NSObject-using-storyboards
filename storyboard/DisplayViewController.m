//
//  DisplayViewController.m
//  storyboard
//
//  Created by Mohammed Yaseen on 15/10/13.
//  Copyright (c) 2013 Mohammed Yaseen. All rights reserved.
//

#import "DisplayViewController.h"

@interface DisplayViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *CurrentImage;

@end

@implementation DisplayViewController
@synthesize CurrentPhoto;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DetailsViewController *idvc=[segue destinationViewController];
    [idvc setCurrentPhoto:[self CurrentPhoto]];
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImage *image=[UIImage imageNamed:[CurrentPhoto fileName]];
    [self.CurrentImage setImage:image];
    [self setTitle:CurrentPhoto.name];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
