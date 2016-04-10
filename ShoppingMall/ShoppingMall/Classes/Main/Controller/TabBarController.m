//
//  TabBarController.m
//  ShoppingMall
//
//  Created by mac on 16/3/29.
//  Copyright © 2016年 com.Myproject. All rights reserved.
//

#import "TabBarController.h"
#import "MessageTableViewController.h"
#import "ServiceTableViewController.h"
#import "MomentTableViewController.h"
#import "MallTableViewController.h"
#import "MeTableViewController.h"
#import "LoginViewController.h"

#import "TabBar.h"

@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self createAllChildViewController];
    
    TabBar * tabbar=[[TabBar alloc] initWithFrame:self.tabBar.frame];
    [self setValue:tabbar forKey:@"tabBar"];
    
    [tabbar setBackgroundImage:[UIImage imageNamed:@"tabbar_background"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//创建所有的子页面
-(void)createAllChildViewController
{
    MessageTableViewController *message=[[MessageTableViewController alloc]init];
    [self addSimpleController:message withTitle:@"信息" withImage:@"tabbar_message"];
    
//    LoginViewController* login = [[LoginViewController alloc] init];
//    
//    MessageTableViewController *message=[[MessageTableViewController alloc]init];
//    [self addSimpleController:login withTitle:@"信息" withImage:@"tabbar_message"];
    
    ServiceTableViewController *service=[[ServiceTableViewController alloc]init];
    [self addSimpleController:service withTitle:@"服务" withImage:@"tabbar_service"];
    
    MomentTableViewController *moment=[[MomentTableViewController alloc]init];
    [self addSimpleController:moment withTitle:@"动态" withImage:@"tabbar_moment"];
    
    MallTableViewController *mall=[[MallTableViewController alloc]init];
    [self addSimpleController:mall withTitle:@"商城" withImage:@"tabbar_moment"];
    
    MeTableViewController *me=[[MeTableViewController alloc]init];
    [self addSimpleController:me withTitle:@"我" withImage:@"tabbar_me"];
}


//创建单个子页面
-(void)addSimpleController:(UIViewController*)vc withTitle:(NSString*)title withImage:(NSString*)img
{
    vc.title=title;
    //Creates and returns a new image object with the specified rendering mode.
    vc.tabBarItem.image=[[UIImage imageNamed:img] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage=[[UIImage imageNamed:[NSString stringWithFormat:@"%@_seleted",img]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UINavigationController* navi=[[UINavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:navi];
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
