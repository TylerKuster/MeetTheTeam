//
//  TeammateProfileView.h
//  MeetTheTeam
//
//  Created by Tyler Kuster on 4/14/17.
//  Copyright © 2017 TylerKuster. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TeammateProfileView : UIView

@property (nonatomic, retain) IBOutlet UILabel* nameLabel;
@property (nonatomic, retain) IBOutlet UILabel* positionLabel;

@property (nonatomic, retain) IBOutlet UITextView* bioTextView;

@end
