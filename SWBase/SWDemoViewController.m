//
//  SWDemoViewController.m
//  SWBase
//
//  Created by Samuel Warmuth on 4/9/13.
//  Copyright (c) 2013 Sam Warmuth. All rights reserved.
//

#import "SWDemoViewController.h"
#import "SWTableViewDemoCell.h"

@interface SWDemoViewController ()

@end

@implementation SWDemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.sections = @[@[@"ok!", @"hello!"], @[@"another section!"]];
    self.sectionHeaders = @[@"one!", @"two!"];
    self.cellClass = [SWTableViewDemoCell class];
}

- (void)didSelectItem:(id)item
{
    NSLog(@"ITEM: %@", item);
}

@end
