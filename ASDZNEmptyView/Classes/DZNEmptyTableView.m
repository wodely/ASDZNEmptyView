//
//  DZNEmptyTableView.m
//  hxxdj
//
//  Created by lyh on 2019/8/22.
//  Copyright © 2019 aisino. All rights reserved.
//

#import "DZNEmptyTableView.h"
#import <DZNEmptyDataSet/UIScrollView+EmptyDataSet.h>
#import "DZNEmptyDataSetConfig.h"

@interface DZNEmptyTableView() <DZNEmptyDataSetSource,DZNEmptyDataSetDelegate>

@property (nonatomic, assign) BOOL isShowEmptyView;

@end

@implementation DZNEmptyTableView

- (id)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    if (self = [super initWithFrame:frame style:style]) {
        [self configDZNEmptyView];
    }
    return self;
}

- (void)configDZNEmptyView {
    self.emptyDataSetSource = self;
    self.emptyDataSetDelegate = self;
}

- (void)showDZNEmptyView {
    self.isShowEmptyView = true;
    [self reloadEmptyDataSet];
}

#pragma mark –-- DZNEmptyDataSetSource, DZNEmptyDataSetDelegate

- (UIImage *)imageForEmptyDataSet:(UIScrollView *)scrollView {
    return [DZNEmptyDataSetConfig defaultDZNEmptyImage];
}

- (NSAttributedString *)titleForEmptyDataSet:(UIScrollView *)scrollView {
    return [DZNEmptyDataSetConfig defaultDZNEmptyAttributedString];
}

- (BOOL)emptyDataSetShouldDisplay:(UIScrollView *)scrollView {
    return self.isShowEmptyView;
}

- (BOOL)emptyDataSetShouldAllowScroll:(UIScrollView *)scrollView {
    return true;
}


@end
