//
//  MasterViewController.m
//  MeetTheTeam
//
//  Created by Tyler Kuster on 4/13/17.
//  Copyright © 2017 TylerKuster. All rights reserved.
//

#import "MasterViewController.h"
#import "TeammateTableViewCell.h"
#import "UIImageView+AFNetworking.h"
#import "DetailViewController.h"

@interface MasterViewController ()

@property (nonatomic, retain) NSArray* theTeam;

@end

@implementation MasterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.detailViewController = (DetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
    [self.tableView registerNib:[UINib nibWithNibName:@"TeammateTableViewCell" bundle:nil]
         forCellReuseIdentifier:@"Cell"];
    
    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"team" ofType:@"json"];
    NSData* data = [NSData dataWithContentsOfFile:filePath];
    self.theTeam = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    [super viewDidLoad];
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"])
    {
        NSIndexPath* indexPath = [self.tableView indexPathForSelectedRow];
        NSDictionary* selectedTeammate = self.theTeam[indexPath.row];
        
        DetailViewController* controller = (DetailViewController*)[[segue destinationViewController] topViewController];
        
        [controller setTeammate:selectedTeammate];
        
        controller.navigationItem.title = self.theTeam[indexPath.row][@"firstName"];
        controller.navigationItem.leftBarButtonItem = self.splitViewController.displayModeButtonItem;
        controller.navigationItem.leftItemsSupplementBackButton = YES;
    }
}


#pragma mark - Table View

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.theTeam.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TeammateTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    NSURL* avatarURL = [NSURL URLWithString:self.theTeam[indexPath.row][@"avatar"]];
    
    NSString* firstName = self.theTeam[indexPath.row][@"firstName"];
    NSString* lastName = self.theTeam[indexPath.row][@"lastName"];
    
    
    [cell.teammateImageView setImageWithURL:avatarURL placeholderImage:nil];

    cell.teammateNameLabel.text = [NSString stringWithFormat:@"%@ %@", firstName, lastName];
    
    cell.teammatePositionLabel.text = self.theTeam[indexPath.row][@"title"];
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"showDetail" sender:self];
}

@end
