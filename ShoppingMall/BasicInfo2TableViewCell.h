//
//  BasicInfo2TableViewCell.h
//  TestDemo
//
//  Created by 董冰彬 on 16/4/21.
//  Copyright © 2016年 dongbingbin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BasicInfo2TableViewCell : UITableViewCell
@property (strong,nonatomic)UILabel* nameLabel;
@property (strong,nonatomic)UILabel* valueLabel;
-(void)setContentWithModel:(NSString*) name v:(NSString*) value;
@end
