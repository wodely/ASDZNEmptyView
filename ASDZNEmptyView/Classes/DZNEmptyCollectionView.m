//
//  DZNEmptyCollectionView.m
//  hxxdj
//
//  Created by lyh on 2019/8/26.
//  Copyright © 2019 aisino. All rights reserved.
//

#import "DZNEmptyCollectionView.h"
#import <DZNEmptyDataSet/UIScrollView+EmptyDataSet.h>
#import "DZNEmptyDataSetConfig.h"

@interface DZNEmptyCollectionView() <DZNEmptyDataSetSource,DZNEmptyDataSetDelegate>

@property (nonatomic, assign) BOOL isShowEmptyView;

@end

@implementation DZNEmptyCollectionView

- (id)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout {
    if (self  = [super initWithFrame:frame collectionViewLayout:layout]) {
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
