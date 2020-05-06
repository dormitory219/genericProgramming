//
//  QYListView.h
//  GenericProgramming
//
//  Created by 韩小猫爱吃鱼 on 2020/5/6.
//  Copyright © 2020 yuqiang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class QYTableViewCell;
@class QYCellModel;

@protocol QYCellTapDelegate <NSObject>

- (void)didTapCell:(__kindof QYCellModel *)model;

@end

@interface QYListView< CellModelType, CellType> : UIView

@property (nonatomic,strong) NSArray<CellModelType> *datas;

@property (nonatomic,assign) id <QYCellTapDelegate> delegate;

- (void)registerCell:(CellType)cellClass;

@end

NS_ASSUME_NONNULL_END
