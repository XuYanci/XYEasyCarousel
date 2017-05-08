![Build Status](https://travis-ci.org/msaps/MSSTabbedPageViewController.svg?branch=develop)
![converage](https://img.shields.io/coveralls/jekyll/jekyll.svg)
![license](https://img.shields.io/github/license/mashape/apistatus.svg)

XYEasyCarousel 是一个公用控件，常用语新闻的轮播图显示。 我写这个是因为我觉得能够用一种比较特别的方式来实现 。 这里我使用UICollectionView以及UIPageControl来构建它，实现它的方式非常有意思!

XYEasyCarousel is an public common control, it usally use in news for displaying main topic . i write for it because i think it can also do that like this method , here i use uicollectionview and uipagecontrol to build it. it is funny how i implement it !


<div style="width:100%;">
<img src="https://github.com/XuYanci/XYEasyCarousel/blob/master/readme~resource/present.gif" align="center" height="30%" width="30%" style="margin-left:20px;">
</div>

<p><p>

## Example (例子)
运行工程例子，克隆仓库和构建工程，例子支持Objective-C。

To run the example project, clone the repo and build the project. Examples are available for Objective-C project.

<p><p>

## Installation (安装)

XYEasyCarousel 暂时不支持cocoapods，你可以克隆仓库，然后添加`XYEasyCarousel.h` `XYEasyCarousel.m`到你的工程中，引入头文件来使用它。

XYEasyCarousel is not available through cocoapods now, you can clone the repo and add `XYEasyCarousel.h` `XYEasyCarousel.m` to you project, import the header and use it.

<p><p>

## Usage

使用图片轮播控件，你需要创建一个轮播图控件并添加到父视图中，然后实现下面的数据源接口:

To use the carousel control, simply create the carousel and add it as subview. Then implement the following data source method:

```
Here return the numberOfItems count
- (NSUInteger)numberOfItemsInEasyCarousel:(XYEasyCarousel *)carousel;
Here return the url of item at index
- (NSURL *)urlForItemInEasyCarouselAtIndex:(NSUInteger)itemIndex;
Here return the image of item at index
- (UIImage *)imageForItemInEasyCarouselAtIndex:(NSUInteger)itemIndex;
```

<p><p>

### Page View Controller Enhancements
```
When user click on item, here return the item index to process other things , like jump to news detail page.
- (void)easyCarousel:(id)sender didClickOnItemAtIndex:(NSUInteger)itemIndex;
```

<p><p>

## Appearance

Wait ...

<p><p>

## Requirements
Supports iOS 8 and above.

<p><p>

## Author
Xu Yanci

Mail: [XuYanci](mailto:grandy.wind@gmail.com)
