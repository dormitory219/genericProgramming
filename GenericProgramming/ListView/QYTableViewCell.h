//
//  QYTableViewCell.h
//  GenericProgramming
//
//  Created by 韩小猫爱吃鱼 on 2020/5/6.
//  Copyright © 2020 yuqiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QYCellModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface QYTableViewCell : UITableViewCell

@property (nonatomic,strong) __kindof QYCellModel *model;

@end

NS_ASSUME_NONNULL_END
