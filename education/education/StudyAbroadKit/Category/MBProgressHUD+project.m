//
//  MBProgressHUD+project.m
//  Newproject
//
//  Created by 何新 on 2017/5/5.
//  Copyright © 2017年 zhiding. All rights reserved.
//

#import "MBProgressHUD+project.h"
#import <ImageIO/ImageIO.h>

@implementation MBProgressHUD (project)

//+ (void)showAnimationImages:(NSString *)image title:(NSString *)title toView:(UIView *)view
//{
//    if (view == nil){
//        view = [[UIApplication sharedApplication].windows lastObject];
//    }
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"ITB_load" ofType:@"gif"];
//    NSData *data = [NSData dataWithContentsOfFile:path];
//    UIImage *imageData = [UIImage sd_animatedGIFWithData:data];
//    UIImageView* imageview = [[UIImageView alloc] initWithImage:imageData];
//    //创建HUD
//    MBProgressHUD *HUD = [MBProgressHUD showHUDAddedTo:view animated:NO];
//    HUD.contentColor = [UIColor grayColor];
//    //设置显示的文字
//    HUD.label.text = @"加载中";
//    HUD.label.font = [UIFont systemFontOfSize:12];
//    HUD.margin = 0;
//    HUD.minSize = CGSizeMake(75, 75);
//    HUD.square = YES;
//    HUD.viewSize = CGSizeMake(125, 125);
//    HUD.center = view.center;
//    
//    //设置显示的模式
//    HUD.mode = MBProgressHUDModeCustomView;
//    //设置显示的动画
//    HUD.animationType = MBProgressHUDAnimationZoomIn;
//    //显示
//    HUD.customView = imageview;
//}

+ (void)hideHUDForView:(UIView *)view
{
    if (view == nil){
        view = [[UIApplication sharedApplication].windows lastObject];
    }
    for (int i = 0; i < view.subviews.count; i++) {
        [self hideHUDForView:view animated:NO];
    }
}

+ (void)hideHUD
{
    [self hideHUDForView:nil];
}

//+ (void)showAnimotionToView:(UIView *)view image:(NSString *)image title:(NSString *)title
//{
//    //    AnimationImgsArr
//    [self showAnimationImages:image title:title toView:view];
//}

//+ (void)showAnimotionToWidownImage:(NSString *)image title:(NSString *)title
//{
//    [self showAnimotionToView:nil image:image title:title];
//}
+ (void) showAnimationTitle:(NSString *)title{
    
    UIView *view = [[UIApplication sharedApplication].windows firstObject];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    hud.bezelView.backgroundColor = [UIColor blackColor];
    hud.bezelView.alpha = 0.9;
    hud.userInteractionEnabled = NO;
    hud.label.text = [NSString stringWithFormat:@"%@",title];
    hud.mode = MBProgressHUDModeCustomView;
    hud.margin = 10.f;
    [hud.label setTextColor:[UIColor whiteColor]];
    [hud.label setFont:[UIFont systemFontOfSize:15]];
//    [hud setViewY:250.f];
    hud.removeFromSuperViewOnHide = YES;
    hud.minShowTime = 1.5;
    [hud hideAnimated:YES];
}
@end
