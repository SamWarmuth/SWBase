//
//  SWTableViewCell.m
//  SWBase
//
//  Created by Samuel Warmuth on 4/9/13.
//  Copyright (c) 2013 Sam Warmuth. All rights reserved.
//

#import "SWTableViewCell.h"

@implementation SWTableViewCell

+ (CGFloat)heightForItem:(id)item
{
    return 44.0;
}
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)prepareUIWithItem:(id)item
{
    if ([item isKindOfClass:[NSString class]]) {
        self.textLabel.text = (NSString *)item;
    }
}

@end
