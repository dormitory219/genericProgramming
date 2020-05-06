//
//  QYProductCellModel.h
//  GenericProgramming
//
//  Created by 韩小猫爱吃鱼 on 2020/5/6.
//  Copyright © 2020 yuqiang. All rights reserved.
//

#import "QYCellModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface QYProductCellModel : QYCellModel

@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *text;

@end

NS_ASSUME_NONNULL_END
