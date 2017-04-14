//
//  TeammateTableViewCell.h
//  MeetTheTeam
//
//  Created by Tyler Kuster on 4/14/17.
//  Copyright © 2017 TylerKuster. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TeammateTableViewCell : UITableViewCell

@property (nonatomic, retain) IBOutlet UIImageView* teammateImageView;

@property (nonatomic, retain) IBOutlet UILabel* teammateNameLabel;
@property (nonatomic, retain) IBOutlet UILabel* teammatePositionLabel;

@end
