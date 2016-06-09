//
//  ViewController.m
//  CreateFromViewController
//
//  Created by Xmob - Longdt on 6/8/16.
//  Copyright © 2016 Xmob - Longdt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Beautiful Girl";
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
//    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
//    if (!cell){
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
//    }
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell = [cell initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    cell.textLabel.text = @"Learn Table  View";
    cell.textLabel.textColor = [UIColor blueColor];
    cell.detailTextLabel.text = @"test detail text label";
    cell.imageView.image = [UIImage imageNamed:@"banana.png"];
    //accessoryType: các kiểu có sẵn - accessoryView: cho phep custom
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100.0;
}

@end
