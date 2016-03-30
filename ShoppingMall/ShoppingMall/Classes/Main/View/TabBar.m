//
//  TabBar.m
//  ShoppingMall
//
//  Created by mac on 16/3/29.
//  Copyright © 2016年 com.Myproject. All rights reserved.
//

#import "TabBar.h"

@implementation TabBar

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


-(void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat tabbarWidth=self.bounds.size.width;
    CGFloat tabbarHeigh=self.bounds.size.height;
    
    CGFloat btnX=0;
    CGFloat btnY=0;
    
    CGFloat btnWidth=tabbarWidth/(self.items.count);
    CGFloat btnHeigh=tabbarHeigh;
    
    /*
    UIImage * backImg=[UIImage imageNamed:@"tabbar_background"];
    UIImageView * backImgVw = [[UIImageView alloc] initWithImage:backImg];
    [backImgVw setFrame:CGRectMake(0, 0, tabbarWidth, tabbarHeigh)];
    [self addSubview:backImgVw];
     */
    
    //self.backgroundImage=[UIImage imageNamed:@"tabbar_background"];
    //self.opaque=YES;
    
    //[self setBackgroundImage:[UIImage imageNamed:@"tabbar_background"]];
    
    NSInteger i=0;
    for (UIView * tabbarBtn in self.subviews) {
        if([tabbarBtn isKindOfClass:NSClassFromString(@"UITabBarButton")])
        {
            btnX=btnWidth*i;
            tabbarBtn.frame=CGRectMake(btnX, btnY, btnWidth, btnHeigh);
            i++;
        }
    }
}



@end
