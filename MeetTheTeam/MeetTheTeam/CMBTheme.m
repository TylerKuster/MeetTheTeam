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

+ (UIColor*)ttRed
{
    CGFloat rValue = 229.0f / 255.0f;
    CGFloat gValue = 90.0f / 255.0f;
    CGFloat bValue = 80.0f / 255.0f;
    
    return [UIColor colorWithRed:rValue green:gValue blue:bValue alpha:1.0f];
}

+ (UIColor*)cmbGrey
{
    CGFloat rValue = 100.0f / 255.0f;
    CGFloat gValue = 100.0f / 255.0f;
    CGFloat bValue = 100.0f / 255.0f;
    
    return [UIColor colorWithRed:rValue green:gValue blue:bValue alpha:1.0f];
}

+ (NSMutableAttributedString*)styleCellNameLabelWith:(NSString*)text
{
    NSMutableAttributedString* attributedString = [[NSMutableAttributedString alloc] initWithString:text];

    [attributedString addAttribute:NSFontAttributeName
                             value:[UIFont fontWithName:@"Lato-Regular" size:17.0f]
                             range:NSMakeRange(0, [text length])];
    
    [attributedString addAttribute:NSForegroundColorAttributeName
                             value:[CMBTheme cmbGrey]
                             range:NSMakeRange(0, [text length])];
    
    [attributedString addAttribute:NSKernAttributeName
                             value:[NSNumber numberWithFloat:-0.1f]
                             range:NSMakeRange(0, [text length])];
    
    return attributedString;
}

+ (NSMutableAttributedString*)styleCellPositionLabelWith:(NSString*)text
{
    NSMutableAttributedString* attributedString = [[NSMutableAttributedString alloc] initWithString:text];
    
    [attributedString addAttribute:NSFontAttributeName
                             value:[UIFont fontWithName:@"Lato-Regular" size:14.0f]
                             range:NSMakeRange(0, [text length])];
    
    [attributedString addAttribute:NSForegroundColorAttributeName
                             value:[CMBTheme cmbGrey]
                             range:NSMakeRange(0, [text length])];
    
    [attributedString addAttribute:NSKernAttributeName
                             value:[NSNumber numberWithFloat:-0.2f]
                             range:NSMakeRange(0, [text length])];
    
    return attributedString;
}

+ (NSMutableAttributedString*)styleProfileNameLabelWith:(NSString*)text
{
    NSMutableAttributedString* attributedString = [[NSMutableAttributedString alloc] initWithString:text];
    
    [attributedString addAttribute:NSFontAttributeName
                             value:[UIFont fontWithName:@"Lato-Bold" size:27.0f]
                             range:NSMakeRange(0, [text length])];
    
    [attributedString addAttribute:NSForegroundColorAttributeName
                             value:[CMBTheme cmbGrey]
                             range:NSMakeRange(0, [text length])];
    
    [attributedString addAttribute:NSKernAttributeName
                             value:[NSNumber numberWithFloat:-0.5f]
                             range:NSMakeRange(0, [text length])];
    
    return attributedString;
}

+ (NSMutableAttributedString*)styleProfilePositionLabelWith:(NSString*)text
{
    NSMutableAttributedString* attributedString = [[NSMutableAttributedString alloc] initWithString:text];
    
    [attributedString addAttribute:NSFontAttributeName
                             value:[UIFont fontWithName:@"Lato-Semibold" size:20.0f]
                             range:NSMakeRange(0, [text length])];
    
    [attributedString addAttribute:NSForegroundColorAttributeName
                             value:[CMBTheme cmbGrey]
                             range:NSMakeRange(0, [text length])];
    
    [attributedString addAttribute:NSKernAttributeName
                             value:[NSNumber numberWithFloat:-0.5f]
                             range:NSMakeRange(0, [text length])];
    
    return attributedString;
}

+ (NSMutableAttributedString*)styleProfileBioTextViewWith:(NSString*)text
{
    NSMutableParagraphStyle* paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.alignment = NSTextAlignmentJustified;
    
    NSMutableAttributedString* attributedString = [[NSMutableAttributedString alloc] initWithString:text];
    
    [attributedString addAttribute:NSFontAttributeName
                             value:[UIFont fontWithName:@"Lato-Regular" size:18.0f]
                             range:NSMakeRange(0, [text length])];
    
    [attributedString addAttribute:NSForegroundColorAttributeName
                             value:[CMBTheme cmbGrey]
                             range:NSMakeRange(0, [text length])];
    
    [attributedString addAttribute:NSParagraphStyleAttributeName
                             value:paragraphStyle
                             range:NSMakeRange(0, [text length])];
    
    [attributedString addAttribute:NSKernAttributeName
                             value:[NSNumber numberWithFloat:-0.56f]
                             range:NSMakeRange(0, [text length])];
    
    [attributedString addAttribute:NSBaselineOffsetAttributeName
                             value:@0
                             range:NSMakeRange(0, [text length])];
    
    return attributedString;
}

@end
