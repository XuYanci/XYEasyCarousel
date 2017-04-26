//
//  XYEasyCarousel.m
//  XYEasyCarousel
//
//  Created by Yanci on 17/4/26.
//  Copyright © 2017年 Yanci. All rights reserved.
//

#import "XYEasyCarousel.h"


@interface XYEasyCarousel()
@property (nonatomic,strong) UICollectionView *collectionView;
@end

@implementation XYEasyCarousel {
    BOOL _needsReload;  /*! 需要重载 */
    struct {
    }_datasourceHas;    /*! 数据源存在标识 */
    struct {
    }_delegateHas;      /*! 数据委托存在标识 */
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


#pragma mark - life cycle
- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setNeedsReload];
    }
    return self;
}

- (void)layoutSubviews {
    [self _reloadDataIfNeeded];
    [super layoutSubviews];
}

#pragma mark - datasource
#pragma mark - delegate
#pragma mark - user events
#pragma mark - functions


- (void)commonInit {}

- (void)setDataSource {}

- (void)setDelegate {}

- (void)setNeedsReload {
    _needsReload = YES;
    [self setNeedsLayout];
}
- (void)_reloadDataIfNeeded {
    if (_needsReload) {
        [self reloadData];
    }
}
- (void)reloadData {}
- (void)setFrame:(CGRect)frame {}
#pragma mark - notification
#pragma mark - getter and setter

- (UICollectionView *)collectionView {
    if (!_collectionView) {
        _collectionView = [[UICollectionView alloc]init];
    }
    return _collectionView;
}
@end
