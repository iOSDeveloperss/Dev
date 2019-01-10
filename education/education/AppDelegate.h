//
//  AppDelegate.h
//  education
//
//  Created by 何新 on 2019/1/9.
//  Copyright © 2019 HLJF. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YiNetworkEngine.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic,strong) YiNetworkEngine *apiEngine;//a api engine

@end

