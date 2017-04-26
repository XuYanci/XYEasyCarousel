//
//  XYEasyCarousel.h
//  XYEasyCarousel
//
//  Created by Yanci on 17/4/26.
//  Copyright © 2017年 Yanci. All rights reserved.
//

#import <UIKit/UIKit.h>
@class XYEasyCarousel;
@protocol XYEasyCarouselDataSource <NSObject>

- (NSUInteger)numberOfItemsInEasyCarousel:(XYEasyCarousel *)carousel;

@end

@protocol XYEasyCarouselDelegate <NSObject>

@end


@interface XYEasyCarousel : UIView
@property (nonatomic,weak) id <XYEasyCarouselDataSource> dataSource;
@property (nonatomic,weak) id <XYEasyCarouselDelegate> delegate;





/**
 重载数据
 */
- (void)reloadData;
@end
