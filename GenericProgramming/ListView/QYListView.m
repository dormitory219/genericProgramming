//
//  QYListView.m
//  GenericProgramming
//
//  Created by 韩小猫爱吃鱼 on 2020/5/6.
//  Copyright © 2020 yuqiang. All rights reserved.
//

#import "QYListView.h"
#import "QYTableViewCell.h"
#import "QYCellModel.h"

@interface QYListView()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) UITableView *table;
@property (nonatomic,strong) Class registerCellClass;

@end

@implementation QYListView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UITableView *table = [[UITableView alloc] initWithFrame:frame style:UITableViewStylePlain];
        table.delegate = self;
        table.dataSource = self;
        self.table = table;
        [self addSubview:table];
    }
    return self;
}

- (void)registerCell:(id)cellClass{
    self.registerCellClass = cellClass;
    [self.table registerClass:cellClass forCellReuseIdentifier:[self cellReusableIdentifier]];
}

- (NSString *)cellReusableIdentifier{
    return NSStringFromClass(self.registerCellClass);
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.datas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    QYTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[self cellReusableIdentifier]];
    cell.backgroundColor = [UIColor colorWithRed:0.1*arc4random_uniform(10) green:0.1*arc4random_uniform(10) blue:0.1*arc4random_uniform(10) alpha:1];
    __kindof QYCellModel *model = self.datas[indexPath.row];
    cell.model = model;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    __kindof QYCellModel *model = self.datas[indexPath.row];
    if (self.delegate && [self.delegate respondsToSelector:@selector(didTapCell:)]) {
        [self.delegate didTapCell:model];
    }
}

@end
