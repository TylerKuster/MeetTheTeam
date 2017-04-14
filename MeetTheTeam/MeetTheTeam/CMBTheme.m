//
//  CMBTheme.m
//  MeetTheTeam
//
//  Created by Tyler Kuster on 4/14/17.
//  Copyright © 2017 TylerKuster. All rights reserved.
//

#import "CMBTheme.h"

@implementation CMBTheme

+ (UIColor*)cmbBlue
{
    CGFloat rValue = 15.0f / 255.0f;
    CGFloat gValue = 124.0f / 255.0f;
    CGFloat bValue = 228.0f / 255.0f;
    
    return [UIColor colorWithRed:rValue green:gValue blue:bValue alpha:1.0f];
}

+ (UILabel*)styleTeammateCellNameLabelWith:(UILabel*)label
{
    
    return label;
}

@end
