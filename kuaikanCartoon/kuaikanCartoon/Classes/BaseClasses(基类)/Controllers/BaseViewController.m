//
//  BaseViewController.m
//  kuaikanCartoon
//
//  Created by dengchen on 16/4/30.
//  Copyright © 2016年 name. All rights reserved.
//

#import "BaseViewController.h"
#import "UIBarButtonItem+EXtension.h"
#import "MainTabBarController.h"
#import "UIView+Extension.h"
#import "CommonMacro.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithWhite:0.95 alpha:1]];
    
    
}

- (void)setBackItemWithImage:(NSString *)image pressImage:(NSString *)pressImage {
    
    UIBarButtonItem *back = [UIBarButtonItem barButtonItemWithImage:image pressImage:pressImage target:self action:@selector(back)];
    
    [self.navigationItem setLeftBarButtonItem:back];
    
}

- (void)back {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
        MainTabBarController *main = (MainTabBarController *)self.tabBarController;
        [main setHidesBottomBar:self.navigationController.viewControllers.count > 1];
   
}

@end
