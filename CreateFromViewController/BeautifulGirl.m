//
//  BeautifulGirl.m
//  CreateFromViewController
//
//  Created by Xmob - Longdt on 6/8/16.
//  Copyright © 2016 Xmob - Longdt. All rights reserved.
//

#import "BeautifulGirl.h"

@interface BeautifulGirl ()

@end

@implementation BeautifulGirl{
    NSArray *name;
    NSArray *info;
    NSArray *thumbnails;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationItem setTitle:@"Beautiful Girl"];
    name = @[@"Adriana Lima", @"Kate Upton"];
    info = @[@"96-60-69", @"85-58-85"];
    thumbnails = @[@"AdrianaLima0.jpg",@"KateUpton0.jpg"];
    self.view.backgroundColor = [UIColor whiteColor];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    [self.view addSubview:self.tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell = [cell initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    cell.textLabel.text = [NSString stringWithFormat:@"%@",name[indexPath.row]];
    cell.imageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@",info[indexPath.row]];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70;
}

@end
