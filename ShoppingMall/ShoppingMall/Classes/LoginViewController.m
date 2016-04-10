//
//  LoginViewController.m
//  ShoppingMall
//
//  Created by 董冰彬 on 16/4/10.
//  Copyright © 2016年 com.Myproject. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initSubviews];
    [self setLayout];
}


-(void)initSubviews
{
    
    UIImageView* imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    imageView.image = [UIImage imageNamed:@"loginbackground.png"];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:imageView];
    
    self.boxview = [[UIView alloc] init];
    self.boxview.translatesAutoresizingMaskIntoConstraints = NO;
    //self.boxview.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.boxview];
    
    
    self.phoneLabel = [[UIImageView alloc] init];
    //self.phoneLabel.backgroundColor = [UIColor greenColor];
    self.phoneLabel.translatesAutoresizingMaskIntoConstraints = NO;
    
    //UIImageView* iconimageView = [[UIImageView alloc] initWithFrame:self.phoneLabel.frame];
    //NSLog(@"self.phoneLabel.frame:%@",self.phoneLabel.frame);
    self.phoneLabel.image = [UIImage imageNamed:@"downicon.png"];
    //self.phoneLabel.contentMode = UIViewContentModeScaleAspectFit;
    //UIColor *color = [UIColor colorWithPatternImage:[UIImage imageNamed:@"downicon.png"]];
    //[myLabel setBackgroundColor:color];
    //[self.phoneLabel setBackgroundColor:color];
    
    [self.boxview addSubview:self.phoneLabel];
    
    self.pwdLabel = [[UILabel alloc] init];
    self.pwdLabel.backgroundColor = [UIColor whiteColor];
    self.pwdLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.pwdLabel.text=@"显示";
    self.pwdLabel.textAlignment = NSTextAlignmentCenter;
    self.pwdLabel.font = [UIFont fontWithName:@"Arial" size:10.0f];
    [self.boxview addSubview:self.pwdLabel];
    
    self.fogetpwdLabel = [[UILabel alloc] init];
    //self.fogetpwdLabel.backgroundColor = [UIColor greenColor];
    self.fogetpwdLabel.text = @"忘记密码?";
    self.fogetpwdLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.boxview addSubview:self.fogetpwdLabel];
    
    self.phonetxt = [[UITextField alloc] init];
    self.phonetxt.translatesAutoresizingMaskIntoConstraints = NO;
    self.phonetxt.placeholder = @"手机号";
    [self.boxview addSubview:self.phonetxt];
    
    self.pwdtxt = [[UITextField alloc] init];
    self.pwdtxt.translatesAutoresizingMaskIntoConstraints = NO;
    self.pwdtxt.placeholder = @"6-16位字母和数字的密码";
    //self.pwdtxt.placeholder =@"密码";
    [self.boxview addSubview:self.pwdtxt];
    
    //    self.pwdtxt = [[UITextField alloc] init];
    //    self.pwdtxt.translatesAutoresizingMaskIntoConstraints = NO;
    //    [self.boxview addSubview:self.pwdtxt];
    
    
    self.lineView1 = [[UIView alloc] init];
    self.lineView1.translatesAutoresizingMaskIntoConstraints = NO;
    self.lineView1.backgroundColor = [UIColor grayColor];
    
    [self.boxview addSubview:self.lineView1];
    
    self.lineView2 = [[UIView alloc] init];
    self.lineView2.translatesAutoresizingMaskIntoConstraints = NO;
    self.lineView2.backgroundColor = [UIColor grayColor];
    [self.boxview addSubview:self.lineView2];
    
    
    
    
    
    
    self.signinBtn = [[UIButton alloc] init];
    [self.signinBtn setTitle:@"登录" forState:UIControlStateNormal];
    self.signinBtn.translatesAutoresizingMaskIntoConstraints = NO;
    self.signinBtn.backgroundColor = [UIColor whiteColor];
    [self.signinBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.signinBtn.titleLabel setTextColor:[UIColor blackColor]];
    [self.boxview addSubview:self.signinBtn];
    
    self.signupBtn = [[UIButton alloc] init];
    [self.signupBtn setTitle:@"注册" forState:UIControlStateNormal];
    self.signupBtn.translatesAutoresizingMaskIntoConstraints = NO;
    self.signupBtn.backgroundColor = [UIColor whiteColor];
    [self.signupBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.boxview addSubview:self.signupBtn];
    
    //UIColor *bgColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"loginbackground"]];
    
    //[self.view setBackgroundColor:bgColor];
    
    
}

-(void)setLayout
{
    //set boxview layout
    NSDictionary *box1dict = NSDictionaryOfVariableBindings(_boxview, _phoneLabel, _phonetxt, _pwdLabel, _pwdtxt,_lineView1,_lineView2,_fogetpwdLabel,_signinBtn,_signupBtn);
    
    [self.boxview addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[_signinBtn(100)]-120-[_signupBtn(100)]" options:NSLayoutFormatAlignAllTop|NSLayoutFormatAlignAllBottom metrics:nil views:box1dict]];
    
    
    [self.boxview addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[_phonetxt]-8-[_phoneLabel(26)]-20-|" options:NSLayoutFormatAlignAllTop|NSLayoutFormatAlignAllBottom metrics:nil views:box1dict]];
    
    [self.boxview addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[_pwdtxt]-8-[_pwdLabel(56)]-20-|" options:NSLayoutFormatAlignAllTop|NSLayoutFormatAlignAllBottom metrics:nil views:box1dict]];
    
    [self.boxview addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-8-[_phonetxt(20)]-8-[_lineView1(1)]-8-[_pwdtxt(20)]-8-[_lineView2(1)]-8-[_fogetpwdLabel]-20-[_signinBtn(50)]" options:NSLayoutFormatAlignAllLeft metrics:nil views:box1dict]];
    
    
    
    
    
    
    
    [self.boxview addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[_lineView2]-20-|" options:0 metrics:nil views:box1dict]];
    [self.boxview addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[_lineView1]-20-|" options:0 metrics:nil views:box1dict]];
    
    NSDictionary *superviewdict = @{@"_boxview":_boxview,@"supperview":self.view};
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[_boxview(360)]-(<=1)-[supperview]" options:NSLayoutFormatAlignAllCenterY metrics:nil views:superviewdict]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[_boxview(200)]-(<=1)-[supperview]" options:NSLayoutFormatAlignAllCenterX metrics:nil views:superviewdict]];
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
