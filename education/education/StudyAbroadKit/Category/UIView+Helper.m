//
//  UIView+Helper.m
//  OneBuy
//
//  Created by Ivan Wu on 15/12/15.
//  Copyright © 2015年 Mesoid Information Technology Co.,Ltd. All rights reserved.
//

#import "UIView+Helper.h"

@implementation UIView (Helper)

- (void)setViewOrigin:(CGPoint)origin
{
    CGRect viewFrame = self.frame;
    viewFrame.origin = origin;
    self.frame = viewFrame;
}

- (void)setViewX:(CGFloat)x
{
    CGRect viewFrame = self.frame;
    viewFrame.origin.x = x;
    self.frame = viewFrame;
}

- (void)setViewY:(CGFloat)y
{
    CGRect viewFrame = self.frame;
    viewFrame.origin.y = y;
    self.frame = viewFrame;
}

- (void)setViewSize:(CGSize)size
{
    CGRect viewFrame = self.frame;
    viewFrame.size = size;
    self.frame = viewFrame;
}

- (void)setViewWidth:(CGFloat)width
{
    CGRect viewFrame = self.frame;
    viewFrame.size.width = width;
    self.frame = viewFrame;
}

- (void)setViewHeight:(CGFloat)height
{
    CGRect viewFrame = self.frame;
    viewFrame.size.height = height;
    self.frame = viewFrame;
}

- (CGPoint)viewOrigin
{
    return self.frame.origin;
}

- (CGFloat)viewMinX
{
    return CGRectGetMinX(self.frame);
}

- (CGFloat)viewMinY
{
   return CGRectGetMinY(self.frame);
}
- (CGFloat)viewMaxY
{
    return CGRectGetMaxY(self.frame);
}
- (CGFloat)viewMaxX
{
    return CGRectGetMaxX(self.frame);
}
- (CGSize)viewSize
{
    return self.frame.size;
}

- (CGFloat)viewWidth
{
    return self.frame.size.width;
}

- (CGFloat)viewHeight
{
    return self.frame.size.height;
}
- (CGFloat)viewCentreX
{
    return self.center.x;
}
- (CGFloat)viewCentreY
{
    return self.center.y;
}

- (void)viewLayerCornerRadius:(CGFloat)radius
                  borderColor:(NSString *)borderColor
                  borderWidth:(CGFloat)borderWidth
{
    self.layer.cornerRadius = radius;
    self.layer.masksToBounds = YES;
    self.layer.borderColor = [UIColor colorWithHexString:borderColor alpha:1.f].CGColor;
    self.layer.borderWidth = borderWidth;
}
- (void)viewFrameWithViewX:(CGFloat)viewX
                     viewY:(CGFloat)viewY
                     viewW:(CGFloat)viewW
                     viewH:(CGFloat)viewH
           backgroundColor:(NSString *)color
      backgroundColorAlpha:(CGFloat)alpha

{
    self.frame = CGRectMake(viewX, viewY, viewH, viewW);
    self.backgroundColor = [UIColor colorWithHexString:color alpha:alpha];
}



@end
