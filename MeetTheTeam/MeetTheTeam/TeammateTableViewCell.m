//
//  TeammateTableViewCell.m
//  MeetTheTeam
//
//  Created by Tyler Kuster on 4/14/17.
//  Copyright © 2017 TylerKuster. All rights reserved.
//

#import "TeammateTableViewCell.h"
#import "CMBTheme.h"


@implementation TeammateTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.teammateImageView.layer.cornerRadius = self.teammateImageView.bounds.size.width / 2.0f;
    
    self.teammateImageView.layer.borderWidth = 3.0f;
    self.teammateImageView.layer.borderColor = [CMBTheme cmbBlue].CGColor;
    
    
    UIImageView* chevronRight = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"chevronRight"]];
    
    self.accessoryView = chevronRight;
}

@end
