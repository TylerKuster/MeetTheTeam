//
//  DetailViewController.m
//  MeetTheTeam
//
//  Created by Tyler Kuster on 4/13/17.
//  Copyright © 2017 TylerKuster. All rights reserved.
//

#import "ProfileViewController.h"
#import "UIImageView+AFNetworking.h"
#import "TeammateProfileView.h"
#import "CMBTheme.h"


@interface ProfileViewController ()

@property (nonatomic, retain) IBOutlet UIImageView* teammateImageView;
@property (nonatomic, retain) IBOutlet UIScrollView* scrollView;

@property (nonatomic, retain) IBOutlet TeammateProfileView* profileView;

@end

@implementation ProfileViewController

- (void)configureView
{
    if (self.teammate)
    {
        NSString* firstName = self.teammate[@"firstName"];
        NSString* lastName = self.teammate[@"lastName"];
        
        [self.teammateImageView setImageWithURL:[NSURL URLWithString:self.teammate[@"avatar"]]];
        
        self.profileView.nameLabel.attributedText = [CMBTheme styleProfileNameLabelWith:[NSString stringWithFormat:@"%@ %@", firstName, lastName]];
        
        self.profileView.positionLabel.attributedText = [CMBTheme styleProfilePositionLabelWith:self.teammate[@"title"]];
        
        self.profileView.bioTextView.attributedText = [CMBTheme styleProfileBioTextViewWith:self.teammate[@"bio"]];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            self.scrollView.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width, self.profileView.bioTextView.frame.size.height + 402.0f);

        });
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self configureView];
}

@end
