//
//  UserCenterViewController.m
//  AddressBookModule_Example
//
//  Created by 赵隆晓 on 2024/3/27.
//  Copyright © 2024 Aliffter. All rights reserved.
//

#import "UserCenterViewController.h"
#import "UserDetailViewController.h"
@interface UserCenterViewController ()
@property (nonatomic, strong) UILabel *valueLabel;

@end

@implementation UserCenterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    self.title = self.titleString ?: @"个人中心";

    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 108, 44)];
    [btn setTitle:@"跳转至详情" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(showDetail) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = UIColor.redColor;
    [self.view addSubview:btn];
    btn.center = self.view.center;


}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    NSLog(@"%d",MY_CUSTOM_MACRO);
}

-(void)showDetail{
    UserDetailViewController*detailVC = [[UserDetailViewController alloc] init];
    detailVC.userID = @"8888";
    [self.navigationController pushViewController:detailVC animated:YES];

}


-(void)dealloc{
    NSLog(@"AddressBook");
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
