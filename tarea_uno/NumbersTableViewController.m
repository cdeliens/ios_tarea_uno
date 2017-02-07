//
//  NumbersTableViewController.m
//  tarea_uno
//
//  Created by Christian Deliens on 2/7/17.
//  Copyright © 2017 Christian Deliens. All rights reserved.
//

#import "NumbersTableViewController.h"
#import "NumbersTableViewCell.h"

@interface NumbersTableViewController ()


@end

@implementation NumbersTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.numbers = [NSMutableArray array];
    
    for (NSInteger i = 0; i <= 100; i++)
        [self.numbers addObject:[NSNumber numberWithInteger:i * 8]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;    //count of section
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.numbers count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"NumbersTableViewCell";
    
    NumbersTableViewCell*cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    

    cell.multiplicationDescription.text = [NSString stringWithFormat:@" 8 * %li = ", (long)indexPath.row];

    cell.multiplicationResult.text = [NSString stringWithFormat:@"%@", [self.numbers objectAtIndex:indexPath.row]];
    
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
