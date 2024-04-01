//
//  CTMediator+UserCenter.m
//  UserCenterModule_Example
//
//  Created by 赵隆晓 on 2024/3/29.
//  Copyright © 2024 Aliffter. All rights reserved.
//

#import "CTMediator+UserCenter.h"
//目标target
NSString * const kCTMediatorTarget = @"UserCenter";


@implementation CTMediator (UserCenter)
- (UIViewController *)CTMediator_userCenterController:(NSDictionary *)params{
    UIViewController *viewController = [self performTarget:kCTMediatorTarget action:@"nativeFetchCenterViewController" params:params shouldCacheTarget:false];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return viewController;
    } else {
        // 这里处理异常场景，具体如何处理取决于产品
        return [[UIViewController alloc] init];
    }
}


- (UIViewController *)CTMediator_userDetailController:(NSString *)userID{
   
    UIImage *image = [UIImage imageNamed:@"heart_icon"];
    NSBundle *bundle = [NSBundle bundleForClass:NSClassFromString(@"UserCenterViewController")];
    UIImage *image2 = [UIImage imageNamed:@"heart_icon" inBundle:bundle compatibleWithTraitCollection:nil];
    NSLog(@"imagexxx:%@ - %@",image,image2);

    UIViewController *viewController = [self performTarget:kCTMediatorTarget action:@"nativeFetchDetailViewController" params:@{@"userID":userID,@"image":image} shouldCacheTarget:false];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return viewController;
    } else {
        // 这里处理异常场景，具体如何处理取决于产品
        return [[UIViewController alloc] init];
    }

}
@end
