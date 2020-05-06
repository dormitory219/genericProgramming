//
//  QYProductCell.m
//  GenericProgramming
//
//  Created by 韩小猫爱吃鱼 on 2020/5/6.
//  Copyright © 2020 yuqiang. All rights reserved.
//

#import "QYProductCell.h"

@interface QYProductCell()

@property (nonatomic,strong) UIImageView *iconImageV;
@property (nonatomic,strong) UILabel *descLabel;

@end

@implementation QYProductCell
@dynamic model;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setUpView];
    }
    return self;
}

- (void)setUpView{
    self.iconImageV = [[UIImageView alloc] initWithFrame:CGRectZero];
    [self addSubview:self.iconImageV];
         
    self.descLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    [self addSubview:self.descLabel];
}

- (void)setModel:(QYProductCellModel *)model{
    self.iconImageV.image = [UIImage imageNamed:model.icon];
    self.descLabel.text = model.text;
}

@end
