//
//  BasicInfo1TableViewCell.m
//  TestDemo
//
//  Created by 董冰彬 on 16/4/21.
//  Copyright © 2016年 dongbingbin. All rights reserved.
//

#import "BasicInfo1TableViewCell.h"

@implementation BasicInfo1TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code

}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.contentView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        //        self.backgroundColor = [UIColor themeColor];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        //        UIView *selectedBackground = [UIView new];
        //        selectedBackground.backgroundColor = [UIColor colorWithHex:0xF5FFFA];
        //        [self setSelectedBackgroundView:selectedBackground];
        //self.tintColor = [UIColor colorWithHex:0x15A230];
        [self initSubviews];
        [self setLayout];
    }
    return self;
}


-(void)initSubviews
{
    UIImageView* backView = [[UIImageView alloc] initWithFrame:self.bounds];
    backView.image = [UIImage imageNamed:@"loginbackground.png"];
    backView.backgroundColor = [UIColor greenColor];
    //imageView.contentMode = UIViewContentModeScaleAspectFit;
    self.backgroundView =backView;
    
    self.pic = [[UIImageView alloc] init];
    self.pic.image = [UIImage imageNamed:@"default-portrait.png"];
    //self.pic.backgroundColor = [UIColor redColor];
    self.pic.layer.masksToBounds = YES; //没这句话它圆不起来
    self.pic.layer.cornerRadius = 40; //设置图片圆角的尺度
    [self.contentView addSubview:self.pic];
    
    //self.contentView.backgroundColor = [UIColor greenColor];
    
}

-(void)setLayout
{
    for (UIView *view in self.contentView.subviews) {view.translatesAutoresizingMaskIntoConstraints = NO;}
    
    NSDictionary *superviewdict = @{@"_pic":_pic,@"supperview":self.contentView};
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:[NSString stringWithFormat:@"H:[_pic(%f)]-<=1-[supperview]",80.0] options:NSLayoutFormatAlignAllCenterY metrics:nil views:superviewdict]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:[NSString stringWithFormat:@"V:[_pic(%f)]-<=1-[supperview]",80.0] options:NSLayoutFormatAlignAllCenterX metrics:nil views:superviewdict]];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
