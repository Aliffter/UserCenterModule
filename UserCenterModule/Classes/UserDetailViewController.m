//
//  UserDetailViewController.m
//  AddressBookModule_Example
//
//  Created by 赵隆晓 on 2024/3/27.
//  Copyright © 2024 Aliffter. All rights reserved.
//

#import "UserDetailViewController.h"

@interface UserDetailViewController ()
@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation UserDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    self.title =[NSString stringWithFormat:@"用户id-%@",self.userID];
    
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
   
}

-(void)setImage:(UIImage *)image{
    _image = image;
    [self.imageView removeFromSuperview];
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    self.imageView.image = image;
    [self.view addSubview:self.imageView];
    self.imageView.backgroundColor = UIColor.blueColor;
    self.imageView.center = self.view.center;

}

-(void)dealloc{
    NSLog(@"detail");
}

@end
