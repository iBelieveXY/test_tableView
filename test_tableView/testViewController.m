//
//  testViewController.m
//  test_tableView
//
//  Created by Vic on 15/4/23.
//
//

#import "testViewController.h"

#import "SCGIFImageView.h"
@interface testViewController ()

@end

@implementation testViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"224814.gif" ofType:nil];
    SCGIFImageView *gifImageView = [[SCGIFImageView alloc] initWithGIFFile:filePath];
    gifImageView.frame = CGRectMake(0, 0, 160, 120);
    gifImageView.center = self.view.center;
    [self.view addSubview:gifImageView];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
