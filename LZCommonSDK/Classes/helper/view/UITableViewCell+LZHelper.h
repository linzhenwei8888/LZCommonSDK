//
//  UITableViewCell+LZHelper.h
//  GSCommonSDK
//
//  Created by maochao04 on 2017/6/29.
//  Copyright © 2017年 MaoChao Network Co. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewCell (LZHelper)


+ (instancetype)cellForTableView:(UITableView *)tableView;      //reuseIdentifier:NSStringFromClass(self)
                                                                //style:UITableViewCellStyleDefault

+ (instancetype)cellForTableView:(UITableView *)tableView
                           style:(UITableViewCellStyle)style
                 reuseIdentifier:(NSString*)reuseIdentifier;

/**
 *  重新设置按钮图标和标题位置
 *
 *  @param imageFrame 图标位置, 传入CGRectNull表示不改变
 *  @param textFrame  文本位置, 传入CGRectNull表示不改变
 */
- (void)setImageFrame:(CGRect)imageFrame textFrame:(CGRect)textFrame;

- (void)setImageFrame:(CGRect)imageFrame
            textFrame:(CGRect)textFrame
      detailTextFrame:(CGRect)detailTextFrame
   accessoryViewFrame:(CGRect)accessoryViewFrame;

- (void)setSelectedBackgroundColor:(UIColor*)color;

@end
