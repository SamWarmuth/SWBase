//
//  SWViewController.m
//  SWBase
//
//  Created by Samuel Warmuth on 4/9/13.
//  Copyright (c) 2013 Sam Warmuth. All rights reserved.
//

#import "SWViewController.h"
#import "SWTableViewCell.h"

@interface SWViewController ()

@end

@implementation SWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"Setting cell class");
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
    self.cellClass = [SWTableViewCell class];
}

- (void)setSections:(NSArray *)sections
{
    if (_sections == sections) return;
    _sections = sections;
    [self.tableView reloadData];
}

- (void)setSectionHeaders:(NSArray *)sectionHeaders
{
    if (_sectionHeaders == sectionHeaders) return;
    _sectionHeaders = sectionHeaders;
    [self.tableView reloadData];
}

- (void)setCellClass:(Class)cellClass
{
    _cellClass = cellClass;
    [self.tableView registerClass:self.cellClass forCellReuseIdentifier:NSStringFromClass(self.cellClass)];
    [self.tableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.sections.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    id header = self.sectionHeaders[section];
    if (header && [header isKindOfClass:[NSString class]]) return header;
    return nil;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.sections[section] count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [self.cellClass heightForItem:[self itemForRowAtIndexPath:indexPath]];
}

- (id)itemForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return self.sections[indexPath.section][indexPath.row];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SWTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(self.cellClass)];
    id item = [self itemForRowAtIndexPath:indexPath];
    if (item) [cell prepareUIWithItem:item];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    id item = [self itemForRowAtIndexPath:indexPath];
    if (item) [self didSelectItem:item];
}

- (void)didSelectItem:(id)item
{
    NSLog(@"Selected: %@", item);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
