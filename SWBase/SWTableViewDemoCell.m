//
//  SWTableViewDemoCell.m
//  SWBase
//
//  Created by Samuel Warmuth on 4/9/13.
//  Copyright (c) 2013 Sam Warmuth. All rights reserved.
//

#import "SWTableViewDemoCell.h"

@implementation SWTableViewDemoCell

+ (CGFloat)heightForItem:(id)item
{
    return 44.0;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) { }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}

- (void)prepareUIWithItem:(id)item
{
    self.textLabel.text = (NSString *)item;
    self.textLabel.font = [UIFont fontWithName:@"Avenir Next" size:20.0];
    self.textLabel.textColor = [UIColor blueColor];
}

@end
