//
//  LXViewController.m
//  UserCenterModule
//
//  Created by Aliffter on 03/29/2024.
//  Copyright (c) 2024 Aliffter. All rights reserved.
//

/**
 *  核心方法：
 // 远程App调用入口
 - (id)performActionWithUrl:(NSURL *)url completion:(void(^)(NSDictionary *info))completion;
 // 本地组件调用入口
 - (id)performTarget:(NSString *)targetName action:(NSString *)actionName params:(NSDictionary *)params;
 
 通过Target-Action方式进行调用
 *1、performTarget会根据<#targetName>找到对应的target
 *2、target根据<#actionName>找到对应的action
 *3、action通过传入的params进行传参
 *
 *CTMediator会根据固定的命名规则进行target、action的查找
 *比如：本文中CTMediator+UserCenter.m文件中
 -[self performTarget:@"UserCenter" action:@"nativeFetchCenterViewController" params:params shouldCacheTarget:false];
 *1、通过 @"UserCenter" 找到对应的target(#Target_UserCenter)
 *2、通过Target_UserCenter找到对应的action(#Action_nativeFetchCenterViewController)
 *3、action方法内部通过传入的params对UserCenterViewController对象参数进行赋值
 *
 CTMediator+UserCenter.h 文件
 是CTMediator的一个分类，主要是对外部提供的一个组件入口方便调用。也可以不需要该类
 
 */

#import "LXViewController.h"
#import <UserCenterModule/CTMediator+UserCenter.h>
@interface LXViewController ()

@end

@implementation LXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    

}
- (IBAction)gotoUserCenter:(id)sender {
       UIViewController*vc = [[CTMediator sharedInstance] CTMediator_userCenterController:@{@"key":@"这里是标题"}];
    [self.navigationController pushViewController:vc animated:true];

    
}
- (IBAction)gotoUserDetail:(UIButton *)sender {
    UIViewController *vc = [[CTMediator sharedInstance] CTMediator_userDetailController:@"6666"];
    [self.navigationController pushViewController:vc animated:true];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
