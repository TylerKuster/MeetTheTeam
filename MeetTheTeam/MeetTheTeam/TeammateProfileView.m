//
//  TeammateProfileView.m
//  MeetTheTeam
//
//  Created by Tyler Kuster on 4/14/17.
//  Copyright © 2017 TylerKuster. All rights reserved.
//

#import "TeammateProfileView.h"
#import "CMBTheme.h"


@implementation TeammateProfileView

- (void)commonInit
{
    self.backgroundColor = [UIColor clearColor];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self){
        [self commonInit];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self){
        [self commonInit];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    UIBezierPath* whiteShape = [UIBezierPath bezierPath];
    [whiteShape moveToPoint:CGPointMake(0.0f, 0.5f)];
    [whiteShape addLineToPoint:CGPointMake(self.bounds.size.width, 88.5f)];
    [whiteShape addLineToPoint:CGPointMake(self.bounds.size.width, self.bounds.size.height)];
    [whiteShape addLineToPoint:CGPointMake(0.0f, self.bounds.size.height)];
    
    [[UIColor whiteColor] set];
    
    [whiteShape fill];
    
    UIBezierPath* blueLine = [UIBezierPath bezierPath];
    [blueLine moveToPoint:CGPointMake(0.0f, 0.0f)];
    [blueLine addLineToPoint:CGPointMake(self.bounds.size.width, 88.0f)];
    [blueLine addLineToPoint:CGPointMake(self.bounds.size.width, 94.0f)];
    [blueLine addLineToPoint:CGPointMake(0.0f, 6.0f)];
    
    [[CMBTheme cmbBlue] set];
    
    [blueLine fill];
}

@end
