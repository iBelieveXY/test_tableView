//
//  ViewController.m
//  test_tableView
//
//  Created by Vic on 15/4/9.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {

    [super viewDidLoad];

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellid = @"cell1";
    NSString *str ;
    [str retain];
    [str release];
    UITableViewCell *tableCell = [tableView dequeueReusableCellWithIdentifier:cellid];
    UILabel *commentLable ;
    commentLable = (UILabel *)[tableCell viewWithTag:1];
    commentLable.text = [NSString stringWithFormat:@"倪伟健大好人+%lu",indexPath.row];
    tableCell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    UIButton * clickMe = (UIButton *)[tableCell viewWithTag:2];
    clickMe.accessibilityIdentifier =[NSString stringWithFormat:@"%lu",indexPath.row] ;
    [clickMe addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    
    return tableCell;
}

- (void)click:(UIButton *)sender{
      UIAlertView *alert =[ [UIAlertView alloc]initWithTitle:nil message:[NSString stringWithFormat:@"点击的是第%@个Cell",sender.accessibilityIdentifier] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 6;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    if (indexPath.row%2 == 0) {
        [self performSegueWithIdentifier:@"segue1" sender:nil];
    }else{
        [self performSegueWithIdentifier:@"segue2" sender:nil];
    }
}

@end
