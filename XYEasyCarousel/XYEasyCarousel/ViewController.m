//
//  ViewController.m
//  XYEasyCarousel
//
//  Created by Yanci on 17/4/26.
//  Copyright © 2017年 Yanci. All rights reserved.
//

#import "ViewController.h"
#import "XYEasyCarousel.h"

/** If open test url , open this macro */
#define TEST_Carousel_URL       

@interface ViewController ()<XYEasyCarouselDelegate,XYEasyCarouselDataSource>
@property (nonatomic,strong) XYEasyCarousel *easyCarousel;
@property (nonatomic,strong) NSArray *carouselArray;
@property (nonatomic,strong) NSArray *carouselUrlArray;
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
    
    _carouselUrlArray = @[
                          [NSURL URLWithString:@"http://android-wallpapers.25pp.com//fs08/2016/10/12/2/2000_33b2a736fc1d6b8c4e3974f955c473e2_900x675.jpg"],
                          [NSURL URLWithString:@"http://android-wallpapers.25pp.com//fs08/2016/10/12/7/2000_2bd7dfab6c4c30f6aeab0b6fe1af009b_900x675.jpg"],
                          [NSURL URLWithString:@"http://android-wallpapers.25pp.com//fs08/2016/10/10/3/2000_541cfc7e46816a68e7820a1878dc4d89_900x675.jpg"],
                          [NSURL URLWithString:@"http://android-wallpapers.25pp.com//fs08/2016/10/10/6/2000_84adc5a83af493968407378535ec3f07_900x675.jpg"],
                          [NSURL URLWithString:@"http://android-wallpapers.25pp.com//fs08/2016/10/10/6/2000_deed7ff967f407056157ca290ece7ce3_900x675.jpg"],
                          ];
    [self.easyCarousel reloadData];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - XYEasyCarouselDataSource
- (NSUInteger)numberOfItemsInEasyCarousel:(XYEasyCarousel *)carousel {
#ifdef TEST_Carousel_URL
    return _carouselUrlArray.count;
#else
    return _carouselArray.count;
#endif
}

#ifdef TEST_Carousel_URL
- (NSURL *)urlForItemInEasyCarouselAtIndex:(NSUInteger)itemIndex {
    
    return [_carouselUrlArray objectAtIndex:itemIndex];
}
#else
- (UIImage *)imageForItemInEasyCarouselAtIndex:(NSUInteger)itemIndex {
  
    return [_carouselArray objectAtIndex:itemIndex];
}
#endif

#pragma mark - XYEasyCarouselDelegate 
- (void)easyCarousel:(id)sender didClickOnItemAtIndex:(NSUInteger)itemIndex {
    NSLog(@"click on item index %ld",itemIndex);
    UIAlertController *alertCtrl = [UIAlertController alertControllerWithTitle:@"Tips" message:[NSString stringWithFormat:@"click on item index %ld",itemIndex] preferredStyle:UIAlertControllerStyleAlert];
    [alertCtrl addAction:[UIAlertAction actionWithTitle:@"Confirm"
                                                  style:UIAlertActionStyleDefault
                                                handler:nil]];
    [self presentViewController:alertCtrl animated:YES completion:nil];
    
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
