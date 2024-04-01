//
//  Target_UserCenter.m
//  UserCenterModule_Example
//
//  Created by 赵隆晓 on 2024/3/29.
//  Copyright © 2024 Aliffter. All rights reserved.
//

#import "Target_UserCenter.h"
#import "UserCenterViewController.h"
#import "UserDetailViewController.h"

@implementation Target_UserCenter
- (UIViewController *)Action_nativeFetchCenterViewController:(NSDictionary *)params{
    // 因为action是从属于ModuleA的，所以action直接可以使用ModuleA里的所有声明
    UserCenterViewController *viewController = [[UserCenterViewController alloc] init];
    viewController.titleString = params[@"key"];
    return viewController;

}

- (UIViewController *)Action_nativeFetchDetailViewController:(NSDictionary *)params{
    UserDetailViewController *viewController = [[UserDetailViewController alloc] init];
    viewController.userID = params[@"userID"];
    viewController.image = params[@"image"];
    return viewController;
}



- (id)Action_showAlert:(NSDictionary *)params
{
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        UserCenterCallbackBlock callback = params[@"cancelAction"];
        if (callback) {
            callback(@{@"alertAction":action});
        }
    }];
    
    UIAlertAction *confirmAction = [UIAlertAction actionWithTitle:@"confirm" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        UserCenterCallbackBlock callback = params[@"confirmAction"];
        if (callback) {
            callback(@{@"alertAction":action});
        }
    }];
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"alert from Module A" message:params[@"message"] preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:cancelAction];
    [alertController addAction:confirmAction];
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alertController animated:YES completion:nil];
    return nil;
}


@end
