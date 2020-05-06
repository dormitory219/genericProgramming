//
//  QYProductCell.h
//  GenericProgramming
//
//  Created by 韩小猫爱吃鱼 on 2020/5/6.
//  Copyright © 2020 yuqiang. All rights reserved.
//

#import "QYTableViewCell.h"
#import "QYProductCellModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface QYProductCell : QYTableViewCell

@property (nonatomic,strong) QYProductCellModel *model;

@end

NS_ASSUME_NONNULL_END
