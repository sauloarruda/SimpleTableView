//
//  TVDetailViewController.m
//  SimpleTableView
//
//  Created by Saulo Arruda on 9/18/12.
//  Copyright (c) 2012 Jera. All rights reserved.
//

#import "TVAtrativosViewController.h"
#import "TVCidades.h"

@interface TVAtrativosViewController ()

@end

@implementation TVAtrativosViewController

@synthesize cidade = _cidade;

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[TVCidades todosAtrativosCidade:self.cidade] count];
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"atrativoCell"];
    cell.textLabel.text = [[TVCidades todosAtrativosCidade:self.cidade] objectAtIndex:indexPath.row];
    return cell;
}

@end
