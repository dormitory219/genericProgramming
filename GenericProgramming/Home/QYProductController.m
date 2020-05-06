//
//  ViewController.m
//  GenericProgramming
//
//  Created by 韩小猫爱吃鱼 on 2020/5/6.
//  Copyright © 2020 yuqiang. All rights reserved.
//

#import "QYProductController.h"
#import "QYListView.h"
#import "QYProductCell.h"
#import "QYProductCellModel.h"

@interface QYProductController ()<QYCellTapDelegate>

@end

@implementation QYProductController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    QYListView<QYProductCellModel *,QYProductCell *> *listView = [[QYListView alloc] initWithFrame:CGRectMake(0, 120, self.view.frame.size.width, 300)];
    [listView registerCell:[QYProductCell class]];
    listView.datas = @[
        [QYProductCellModel new],
        [QYProductCellModel new],
        [QYProductCellModel new]
    ];
    listView.delegate = self;
    [self.view addSubview:listView];
    
    // Do any additional setup after loading the view.
}

- (void)didTapCell:(QYProductCellModel *)model{
    
}


@end
