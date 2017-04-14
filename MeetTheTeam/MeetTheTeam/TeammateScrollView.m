//
//  TeammateScrollView.m
//  MeetTheTeam
//
//  Created by Tyler Kuster on 4/14/17.
//  Copyright © 2017 TylerKuster. All rights reserved.
//

#import "TeammateScrollView.h"
//#import "CMBTheme.h"


@implementation TeammateScrollView

- (void)commonInit
{
    self.backgroundColor = [UIColor clearColor];
    self.contentSize = CGSizeMake(self.bounds.size.width, self.bounds.size.height*2);
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

@end
