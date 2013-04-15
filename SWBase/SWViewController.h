//
//  SWViewController.h
//  SWBase
//
//  Created by Samuel Warmuth on 4/9/13.
//  Copyright (c) 2013 Sam Warmuth. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SWTableViewCell.h"

@interface SWViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *sections, *sectionHeaders;
@property (nonatomic, strong) Class<SWTableViewCell> cellClass;

- (id)itemForRowAtIndexPath:(NSIndexPath *)indexPath;
- (void)didSelectItem:(id)item;

@end
