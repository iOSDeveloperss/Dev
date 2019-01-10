//
//  UIView+Helper.h
//  OneBuy
//
//  Created by Ivan Wu on 15/12/15.
//  Copyright © 2015年 Mesoid Information Technology Co.,Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Helper)

- (void)setViewOrigin:(CGPoint)origin;

- (void)setViewX:(CGFloat)x;

- (void)setViewY:(CGFloat)y;

- (void)setViewSize:(CGSize)size;

- (void)setViewWidth:(CGFloat)width;

- (void)setViewHeight:(CGFloat)height;

- (CGPoint)viewOrigin;

- (CGFloat)viewMinX;

- (CGFloat)viewMinY;

- (CGFloat)viewMaxY;

- (CGFloat)viewMaxX;

- (CGSize)viewSize;

- (CGFloat)viewWidth;

- (CGFloat)viewHeight;

- (CGFloat)viewCentreX;

- (CGFloat)viewCentreY;

- (void)viewFrameWithViewX:(CGFloat)viewX
                     viewY:(CGFloat)viewY
                     viewW:(CGFloat)viewW
                     viewH:(CGFloat)viewH
           backgroundColor:(NSString *)color
      backgroundColorAlpha:(CGFloat)alpha;

// 设置圆角和边框
- (void)viewLayerCornerRadius:(CGFloat)radius
                  borderColor:(NSString *)borderColor
                  borderWidth:(CGFloat)borderWidth;

@end
