//
//  Target_UserCenter.h
//  UserCenterModule_Example
//
//  Created by 赵隆晓 on 2024/3/29.
//  Copyright © 2024 Aliffter. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 USerCenter组件中提供的服务
 */
NS_ASSUME_NONNULL_BEGIN
typedef void (^UserCenterCallbackBlock)(NSDictionary *info);

@interface Target_UserCenter : NSObject
- (UIViewController *)Action_nativeFetchCenterViewController:(NSDictionary *)params;
- (UIViewController *)Action_nativeFetchDetailViewController:(NSDictionary *)params;

- (id)Action_showAlert:(NSDictionary *)params;


@end

NS_ASSUME_NONNULL_END
