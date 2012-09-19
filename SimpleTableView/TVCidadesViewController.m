//
//  TVMasterViewController.m
//  SimpleTableView
//
//  Created by Saulo Arruda on 9/18/12.
//  Copyright (c) 2012 Jera. All rights reserved.
//

#import "TVCidadesViewController.h"
#import "TVAtrativosViewController.h"
#import "TVCidades.h"

@interface TVCidadesViewController ()

@end

@implementation TVCidadesViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[TVCidades todasCidades] count];
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"cidadeCell"];
    cell.textLabel.text = [[TVCidades todasCidades] objectAtIndex:indexPath.row];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    TVAtrativosViewController* destination = segue.destinationViewController;
    NSIndexPath* indexPath = [self.tableView indexPathForSelectedRow];
    destination.cidade = [[TVCidades todasCidades] objectAtIndex:indexPath.row];
}

@end
