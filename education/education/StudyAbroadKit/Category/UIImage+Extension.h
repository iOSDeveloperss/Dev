//
//  UIImage+Extension.h
//  01-QQ聊天布局
//
//  Created by apple on 14-4-2.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)
+ (UIImage *)resizableImage:(NSString *)name;
//拉伸矩形
+ (UIImage *)rectangularResizableTop:(CGFloat )top bottom:(CGFloat )bottom left:(CGFloat )left right:(CGFloat )right Image:(NSString *)name;

//颜色生成图片
+ (UIImage *)imageWithColor:(UIColor *)color;

@end
