//
//  CMBTheme.h
//  MeetTheTeam
//
//  Created by Tyler Kuster on 4/14/17.
//  Copyright © 2017 TylerKuster. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CMBTheme : NSObject

+ (UIColor*)cmbBlue;
+ (UIColor*)ttRed;
+ (UIColor*)cmbGrey;

+ (NSMutableAttributedString*)styleCellNameLabelWith:(NSString*)text;
+ (NSMutableAttributedString*)styleCellPositionLabelWith:(NSString*)text;

+ (NSMutableAttributedString*)styleProfileNameLabelWith:(NSString*)text;
+ (NSMutableAttributedString*)styleProfilePositionLabelWith:(NSString*)text;

+ (NSMutableAttributedString*)styleProfileBioTextViewWith:(NSString*)text;

@end
