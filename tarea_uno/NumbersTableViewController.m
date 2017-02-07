//
//  NumbersTableViewController.m
//  tarea_uno
//
//  Created by Christian Deliens on 2/7/17.
//  Copyright © 2017 Christian Deliens. All rights reserved.
//

#import "NumbersTableViewController.h"

@interface NumbersTableViewController ()

@end

@implementation NumbersTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *myIntegers = [NSMutableArray array];
    
    for (NSInteger i = 0; i <= 100; i++)
        [myIntegers addObject:[NSNumber numberWithInteger:i * 8]];
    
    NSLog (@"%@", [myIntegers objectAtIndex:0]);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    NSLog(@"# of sections");
    return 1;    //count of section
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"Number of rows for section %li", (long)section);
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"NumbersTableViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat:@"8 * %li = %li", indexPath.row, indexPath.row * 8];
    
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
