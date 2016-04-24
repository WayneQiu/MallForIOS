//
//  BasicInfo2TableViewCell.m
//  TestDemo
//
//  Created by 董冰彬 on 16/4/21.
//  Copyright © 2016年 dongbingbin. All rights reserved.
//

#import "BasicInfo2TableViewCell.h"

@implementation BasicInfo2TableViewCell

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
    //UIImageView* backView = [[UIImageView alloc] initWithFrame:self.bounds];
    //backView.image = [UIImage imageNamed:@"loginbackground.png"];
    //imageView.contentMode = UIViewContentModeScaleAspectFit;
    //[self addSubview:backView];
    
    _nameLabel = [[UILabel alloc] init];
    _nameLabel.font = [UIFont systemFontOfSize:12];
    //_nameLabel.textColor = [UIColor grayColor];
    //_nameLabel.text = @"123321";
    //[_nameLabel setText:@"123"];
    //_nameLabel.backgroundColor = [UIColor redColor];
    [self.contentView addSubview:_nameLabel];
    
    
    
    self.valueLabel = [[UILabel alloc] init];
    _valueLabel.font = [UIFont systemFontOfSize:12];
    [self.contentView addSubview:self.valueLabel];
    
    
}

-(void)setContentWithModel:(NSString*) name v:(NSString*) value
{
    self.nameLabel.text = name;
    self.valueLabel.text = value;
}

-(void)setLayout
{
    for (UIView *view in self.contentView.subviews) {view.translatesAutoresizingMaskIntoConstraints = NO;}
    
    NSDictionary *superviewdict = @{@"_valueLabel":_valueLabel,@"_nameLabel":_nameLabel};

    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[_nameLabel(50)]-8-[_valueLabel(>=40)]" options:NSLayoutFormatAlignAllBottom metrics:nil views:superviewdict]];
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[_valueLabel]" options:0 metrics:nil views:superviewdict]];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
