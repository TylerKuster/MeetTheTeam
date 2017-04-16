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
#import "ProfileViewController.h"
#import "CMBTheme.h"


@interface MasterViewController ()

@property (strong, nonatomic) ProfileViewController *profileViewController;
@property (nonatomic, retain) NSArray* theTeam;

@end

@implementation MasterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.profileViewController = (ProfileViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"TeammateTableViewCell" bundle:nil]
         forCellReuseIdentifier:@"Cell"];
    
    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"catTeam" ofType:@"json"];
    NSData* data = [NSData dataWithContentsOfFile:filePath];
    self.theTeam = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
}

#pragma mark - TableView Delegate

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

    cell.teammateNameLabel.attributedText = [CMBTheme styleCellNameLabelWith:[NSString stringWithFormat:@"%@ %@", firstName, lastName]];
    
    cell.teammatePositionLabel.attributedText = [CMBTheme styleCellPositionLabelWith:self.theTeam[indexPath.row][@"title"]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"showProfile" sender:self];
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showProfile"])
    {
        NSIndexPath* indexPath = [self.tableView indexPathForSelectedRow];
        NSDictionary* selectedTeammate = self.theTeam[indexPath.row];
        
        ProfileViewController* controller = (ProfileViewController*)[[segue destinationViewController] topViewController];
        
        controller.teammate = selectedTeammate;
        
        controller.navigationItem.title = self.theTeam[indexPath.row][@"firstName"];
        
        // Either I'm insane or there is a very subtle gradient on the Navigation bar... Add this if there is time
        
        controller.navigationItem.leftBarButtonItem = self.splitViewController.displayModeButtonItem;
        controller.navigationItem.leftItemsSupplementBackButton = YES;
    }
}

@end
