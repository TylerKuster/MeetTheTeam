//
//  DetailViewController.m
//  MeetTheTeam
//
//  Created by Tyler Kuster on 4/13/17.
//  Copyright © 2017 TylerKuster. All rights reserved.
//

#import "DetailViewController.h"
#import "UIImageView+AFNetworking.h"
#import "TeammateProfileView.h"


@interface DetailViewController ()

@property (nonatomic, retain) IBOutlet UIImageView* teammateImageView;
@property (nonatomic, retain) IBOutlet TeammateProfileView* profileView;

@end

@implementation DetailViewController

- (void)configureView
{
    if (self.teammate)
    {
        NSLog(@"%@", [self.teammate description]);
        
        NSString* firstName = self.teammate[@"firstName"];
        NSString* lastName = self.teammate[@"lastName"];
        
        [self.teammateImageView setImageWithURL:[NSURL URLWithString:self.teammate[@"avatar"]]];
        self.profileView.nameLabel.text = [NSString stringWithFormat:@"%@ %@", firstName, lastName];
        
        self.profileView.positionLabel.text = self.teammate[@"title"];
        
        self.profileView.bioTextView.text = self.teammate[@"bio"];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self configureView];
}

#pragma mark - Managing the detail item

- (void)setTeammate:(NSDictionary *)newTeammate
{
    if (_teammate != newTeammate)
    {
        _teammate = newTeammate;
        
        // Update the view.
        [self configureView];
    }
}

@end
