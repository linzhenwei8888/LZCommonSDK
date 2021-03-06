//
//  UIScrollView+LZHelper.m
//  MMC_Core
//
//  Created by maochao04 on 2017/2/27.
//  Copyright © 2017年 MaoChao Network Co. Ltd. All rights reserved.
//

#import "UIScrollView+LZHelper.h"

@implementation UIScrollView (LZHelper)

-(id)initPageScrollViewWithFrame:(CGRect)frame pageCount:(NSInteger)pageCount
{
    self = [self initWithFrame:frame];
    if (self) {
        self.contentSize = CGSizeMake(self.frame.size.width * pageCount, self.frame.size.height);
        self.backgroundColor                 = [UIColor clearColor];
        self.pagingEnabled                   = YES;
        self.showsHorizontalScrollIndicator  = NO;
    }
    return self;
}

- (void)addSubviewEx:(UIView *)view
{
    [self addSubview:view];
    CGSize size = self.contentSize;
    
    if (self.contentSize.width < view.frame.origin.x + view.frame.size.width) {
        size.width = view.frame.origin.x + view.frame.size.width;
    }

    if (self.contentSize.height < view.frame.origin.y + view.frame.size.height) {
        size.height = view.frame.origin.y + view.frame.size.height;
    }

    self.contentSize = size;
}

- (void)scrollToPage:(NSInteger)pageIndex animated:(BOOL)animated
{
    [self scrollRectToVisible:CGRectMake(pageIndex *  self.bounds.size.width, 0, self.bounds.size.width, self.bounds.size.height) animated:animated];
}

- (NSInteger)pageCount
{
    NSInteger pages = self.contentSize.width / self.frame.size.width;
    return pages;
}

- (NSInteger)currentPageIndex
{
    return self.contentOffset.x / self.frame.size.width;
}

- (CGPoint)topContentOffset
{
    return CGPointMake(0.0f, -self.contentInset.top);
}
- (CGPoint)bottomContentOffset
{
    return CGPointMake(0.0f, self.contentSize.height + self.contentInset.bottom - self.bounds.size.height);
}
- (CGPoint)leftContentOffset
{
    return CGPointMake(-self.contentInset.left, 0.0f);
}
- (CGPoint)rightContentOffset
{
    return CGPointMake(self.contentSize.width + self.contentInset.right - self.bounds.size.width, 0.0f);
}

@end
