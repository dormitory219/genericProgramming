//
//  QYTableViewCell.m
//  GenericProgramming
//
//  Created by 韩小猫爱吃鱼 on 2020/5/6.
//  Copyright © 2020 yuqiang. All rights reserved.
//

#import "QYTableViewCell.h"

@interface QYTableViewCell()

@property (nonatomic,strong) UIView *bottomLine;
@property (nonatomic,strong) UIImageView *rightArrowView;

@end

@implementation QYTableViewCell

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
    self.bottomLine = [[UIView alloc] initWithFrame:CGRectZero];
    [self addSubview:self.bottomLine];
         
    self.rightArrowView = [[UIImageView alloc] initWithFrame:CGRectZero];
    [self addSubview:self.rightArrowView];
}

@end
