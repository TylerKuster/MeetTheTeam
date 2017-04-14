//
//  DetailViewController.h
//  MeetTheTeam
//
//  Created by Tyler Kuster on 4/13/17.
//  Copyright © 2017 TylerKuster. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDictionary *teammate;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

