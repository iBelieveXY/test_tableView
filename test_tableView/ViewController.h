//
//  ViewController.h
//  test_tableView
//
//  Created by Vic on 15/4/9.
//
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (retain, nonatomic) IBOutlet UITableView *table;

@end

