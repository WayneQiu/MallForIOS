//
//  testviewVC.m
//  ShoppingMall
//
//  Created by mac on 16/4/10.
//  Copyright © 2016年 com.Myproject. All rights reserved.
//

#import "testviewVC.h"

@interface testviewVC ()

@end

@implementation testviewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITextField * test =[[UITextField alloc] initWithFrame:CGRectMake(100, 100, 100, 30)];
    self.view.backgroundColor=[UIColor grayColor];
    test.backgroundColor=[UIColor whiteColor];
    [test setKeyboardType:UIKeyboardTypeNumberPad];
    //[test resignFirstResponder];
    [self.view addSubview:test];
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
