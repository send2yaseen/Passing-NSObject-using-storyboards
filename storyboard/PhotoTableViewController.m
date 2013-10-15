 //
//  PhotoTableViewController.m
//  storyboard
//
//  Created by Mohammed Yaseen on 15/10/13.
//  Copyright (c) 2013 Mohammed Yaseen. All rights reserved.
//

#import "PhotoTableViewController.h"

@interface PhotoTableViewController ()
{
    NSMutableArray *photoArray;
}


@end

@implementation PhotoTableViewController


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"ShowPhoto"])
    {
    DisplayViewController *dvc=[segue destinationViewController];
    NSIndexPath *path=[self.tableView indexPathForSelectedRow];
    Photos *c=[photoArray objectAtIndex:path.row];
    [dvc setCurrentPhoto:c];
}
}


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    photoArray =[[NSMutableArray alloc]init];
    Photos  *pic=[[Photos alloc]init];

    [pic setName:@"Crunge Effect"];
    [pic setFileName:@"Mac1.jpg"];
    [pic setDetails:@"A New crunge effect mac wallpaper with high quality"];
    [photoArray addObject:pic ];
    
    pic=[[Photos alloc]init];
    [pic setName:@"Paint Effect"];
    [pic setFileName:@"Mac2.jpeg"];
    [pic setDetails:@"A New Paint effect mac wallpaper "];
    [photoArray addObject:pic ];
    
    pic=[[Photos alloc]init];
    [pic setName:@"Crayon Effect"];
    [pic setFileName:@"Mac3.jpg"];
    [pic setDetails:@"A New Crayon effect mac wallpaper with high quality"];
    [photoArray addObject:pic ];
    
    pic=[[Photos alloc]init];
    [pic setName:@"Black theme Effect"];
    [pic setFileName:@"Mac4.jpg"];
    [pic setDetails:@"A New Black theme effect mac wallpaper with high quality"];
    [photoArray addObject:pic ];
    
    pic=[[Photos alloc]init];
    [pic setName:@"Rome  Effect"];
    [pic setFileName:@"Mac5.jpg"];
    [pic setDetails:@"A New Rome  effect mac wallpaper with high quality"];
    [photoArray addObject:pic ];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    NSLog(@"%@",photoArray);
    return [photoArray count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"PhotoCell";
    UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    Photos *current=[photoArray objectAtIndex:indexPath.row];
    [cell.textLabel setText:current.name];
    
    // Configure the cell...
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
