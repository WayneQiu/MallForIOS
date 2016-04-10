//
//  LoginController.m
//  ShoppingMall
//
//  Created by mac on 16/4/10.
//  Copyright © 2016年 com.Myproject. All rights reserved.
//

#import "LoginController.h"
#import "TabBarController.h"

@interface LoginController ()

@end

@implementation LoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //获取屏幕大小
    NSInteger width = [UIScreen mainScreen].bounds.size.width;
    NSInteger height = [UIScreen mainScreen].bounds.size.height;
    
    
    //背景图片
    UIImageView* bgdView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, width, height)];
    bgdView.image=[UIImage imageNamed:@"login_background"];
    [self.view addSubview:bgdView];
    
    
    /*UITextField * wwww=[[UITextField alloc] initWithFrame:(CGRectMake(0, 100, width*0.6, 30))];
    [wwww setBorderStyle:UITextBorderStyleRoundedRect];
    [bgdView addSubview:wwww];*/
    
    //用户id
    UITextField* txtAccount=[[UITextField alloc] initWithFrame:(CGRectMake(90, height/3, width*0.6, 30))];
    [txtAccount setBorderStyle:UITextBorderStyleRoundedRect];
    txtAccount.placeholder=@"手机号";
    [txtAccount setKeyboardType:UIKeyboardTypeNumberPad];
    [self.view addSubview:txtAccount];
    
    //用户密码
    UITextField* txtPwd=[[UITextField alloc]initWithFrame:CGRectMake(90, height/3+50, width*0.6, 30)];
    //[txtPwd setBorderStyle:UITextBorderStyleLine];
    [txtPwd setBorderStyle:UITextBorderStyleRoundedRect];
    txtPwd.placeholder=@"6-16位数字和密码";
    txtPwd.secureTextEntry=YES;
    [self.view addSubview:txtPwd];
    
    
    
    //登陆按钮
    UIButton * btnLogin=[[UIButton alloc] initWithFrame:CGRectMake(90, height/3+100, 80, 30)];
    [btnLogin setTitle:@"登陆" forState:UIControlStateNormal];
    [btnLogin setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btnLogin setBackgroundColor:[UIColor whiteColor]];
    [btnLogin addTarget:self action:@selector(loginClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnLogin];
    
    //注册按钮
    UIButton * btnSignin=[[UIButton alloc] initWithFrame:CGRectMake(250, height/3+100 , 80, 30)];
    [btnSignin setTitle:@"注册" forState:UIControlStateNormal];
    [btnSignin setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btnSignin setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:btnSignin];
    
}

-(void)loginClick:(UIButton *)sender
{
    NSLog(@"123");
    TabBarController* tabVC=[[TabBarController alloc] init];
    [self.navigationController pushViewController:tabVC animated:YES];
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
