//
//  SWTableViewCell.h
//  SWBase
//
//  Created by Samuel Warmuth on 4/9/13.
//  Copyright (c) 2013 Sam Warmuth. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SWTableViewCell <NSObject>

+ (CGFloat)heightForItem:(id)item;
- (void)prepareUIWithItem:(id)item;

@end

@interface SWTableViewCell : UITableViewCell <SWTableViewCell>

+ (CGFloat)heightForItem:(id)item;
- (void)prepareUIWithItem:(id)item;

@end
