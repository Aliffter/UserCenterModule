//
//  CTMediator+UserCenter.h
//  UserCenterModule_Example
//
//  Created by 赵隆晓 on 2024/3/29.
//  Copyright © 2024 Aliffter. All rights reserved.
//

#import <CTMediator/CTMediator.h>

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (UserCenter)
- (UIViewController *)CTMediator_userCenterController:(NSDictionary *)params;
- (UIViewController *)CTMediator_userDetailController:(NSString *)userID;

@end

NS_ASSUME_NONNULL_END
