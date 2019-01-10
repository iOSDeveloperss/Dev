//
//  MBProgressHUD+project.h
//  Newproject
//
//  Created by 何新 on 2017/5/5.
//  Copyright © 2017年 zhiding. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>

@interface MBProgressHUD (project)


/**
 提示控件
 
 @param title 提示的文字
*/
+ (void) showAnimationTitle:(NSString *)title;

/**HUD从指定的view上移除*/
+ (void)hideHUDForView:(UIView *)view;

/**HUD从window上移除*/
+ (void)hideHUD;



@end
