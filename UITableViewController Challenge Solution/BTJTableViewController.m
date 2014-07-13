//
//  BTJTableViewController.m
//  UITableViewController Challenge Solution
//
//  Created by neo on 13/07/2014.
//  Copyright (c) 2014 BennyTheJudge. All rights reserved.
//

#import "BTJTableViewController.h"

@interface BTJTableViewController ()

@end

@implementation BTJTableViewController

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
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    // creating an array for content to show in the UITableView
    self.planets=[[NSMutableArray alloc]init];
    
    
    for (int i=0;i<10; i++) {
        switch(i) {
            case 0:
                [self.planets addObject:@"Mercury"];
                break;
            case 1:
                [self.planets addObject:@"Venus"];
                break;
            case 2:
                [self.planets addObject:@"Earth"];
                break;
            case 3:
                [self.planets addObject:@"Mars"];
                break;
            case 4:
                [self.planets addObject:@"Jupiter"];
                break;
            case 5:
                [self.planets addObject:@"Uranus"];
                break;
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    // first example static nr. of section
    //return 3;
    // with the planets array example we have only one section
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    // first example 3 different sections
    /*
    switch(section) {
        case 0:
            return 2;
            break;
        case 1:
            return 1;
            break;
        case 2:
            return 3;
            break;
        default:
            return 0;
    }
     */
    // the planets array example as many row as elements in the array
    return [self.planets count];
};


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    printf ("indexPath: %@\n",indexPath);
    // this must match in the storyboard in the Attributes Inspector
    // with the Identifier
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    printf("section: %i\n", indexPath.section);
    
    // set the cell based on the planets array
    cell.textLabel.text = [self.planets objectAtIndex:indexPath.row];
    
    // Configure the cell...
    /*
    switch (indexPath.section) {
        case 0:
            cell.textLabel.text = [NSString stringWithFormat:@"I am in section 0"];
            break;
        case 1:
            cell.textLabel.text = [NSString stringWithFormat:@"another section"];
            break;
        case 2:
            cell.textLabel.text = [NSString stringWithFormat:@"cell %i",indexPath.row];
            break;
        default:
            cell.textLabel.text = [NSString stringWithFormat:@"I shouldn't be here!"];
    }
     */
    
    //cell.textLabel.text = [NSString stringWithFormat:@"Row %i", indexPath.row];
    
    // give different colors to different sections
    switch (indexPath.section) {
        case 0:
            cell.backgroundColor = [UIColor redColor];
            break;
        case 1:
            cell.backgroundColor = [UIColor blueColor];
            break;
        case 2:
            cell.backgroundColor = [UIColor yellowColor];
            break;
    }
    
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
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
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

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
