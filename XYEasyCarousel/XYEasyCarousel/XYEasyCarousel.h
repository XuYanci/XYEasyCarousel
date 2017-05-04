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
@required
- (NSUInteger)numberOfItemsInEasyCarousel:(XYEasyCarousel *)carousel;
@optional
- (NSURL *)urlForItemInEasyCarouselAtIndex:(NSUInteger)itemIndex;
- (UIImage *)imageForItemInEasyCarouselAtIndex:(NSUInteger)itemIndex;
@end

@protocol XYEasyCarouselDelegate <NSObject>
- (void)easyCarousel:(id)sender didClickOnItemAtIndex:(NSUInteger)itemIndex;
@end


@interface XYEasyCarousel : UIView
@property (nonatomic,weak) id <XYEasyCarouselDataSource> dataSource;
@property (nonatomic,weak) id <XYEasyCarouselDelegate> delegate;

/**
 重载数据
 */
- (void)reloadData;
@end
