//
//  ViewController.m
//  XYEasyCarousel
//
//  Created by Yanci on 17/4/26.
//  Copyright © 2017年 Yanci. All rights reserved.
//

#import "ViewController.h"
#import "XYEasyCarousel.h"

@interface ViewController ()<XYEasyCarouselDelegate,XYEasyCarouselDataSource>
@property (nonatomic,strong) XYEasyCarousel *easyCarousel;
@property (nonatomic,strong) NSArray *carouselArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.easyCarousel];
    [self.easyCarousel setFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200.0)];
    _carouselArray = @[
                        [UIImage imageNamed:@"1"],
                        [UIImage imageNamed:@"2"],
                        [UIImage imageNamed:@"3"],
                        [UIImage imageNamed:@"4"],
                        [UIImage imageNamed:@"5"],
                        ];
    [self.easyCarousel reloadData];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - XYEasyCarouselDataSource
- (NSUInteger)numberOfItemsInEasyCarousel:(XYEasyCarousel *)carousel {
    return _carouselArray.count;
}

//- (NSURL *)urlForItemInEasyCarouselAtIndex:(NSUInteger)itemIndex {
//    return [_carouselArray objectAtIndex:itemIndex];
//}

- (UIImage *)imageForItemInEasyCarouselAtIndex:(NSUInteger)itemIndex {
  
    return [_carouselArray objectAtIndex:itemIndex];
}

#pragma mark - XYEasyCarouselDelegate 
- (void)easyCarousel:(id)sender didClickOnItemAtIndex:(NSUInteger)itemIndex {
    NSLog(@"click on item index %ld",itemIndex);
}

#pragma mark - getter and setter

- (XYEasyCarousel *)easyCarousel {
    if (!_easyCarousel) {
        _easyCarousel = [[XYEasyCarousel alloc]init];
        _easyCarousel.dataSource = self;
        _easyCarousel.delegate = self;
    }
    return _easyCarousel;
}

@end
