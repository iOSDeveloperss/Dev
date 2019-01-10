//
//  AppConfig.h
//  Monkey
//
//  Created by coderyi on 15/7/11.
//  Copyright (c) 2015年 www.coderyi.com. All rights reserved.
//

#ifndef Monkey_AppConfig_h
#define Monkey_AppConfig_h

/**
 *   define
 */
//尺寸适配比例（以IPhone6为基准）
//#define IPhoneRatio  [[UIScreen mainScreen] bounds].size.width/375
#define IPhoneRatio(sizes)  ([[UIScreen mainScreen] bounds].size.width/375) * (sizes)

#define ScreenHeight [[UIScreen mainScreen] bounds].size.height
#define ScreenWidth [[UIScreen mainScreen] bounds].size.width
#define ApplicationDelegate ((AppDelegate *)[UIApplication sharedApplication].delegate)
#define IsiPhoneX ((ScreenWidth == 375.f && ScreenHeight == 812.f) || (ScreenHeight == 375.f && ScreenWidth == 812.f))

//我喜欢的蓝色
#define YiBlue [UIColor colorWithRed:0.24f green:0.51f blue:0.78f alpha:1.00f]
//灰色
#define YiGray [UIColor colorWithRed:0.80f green:0.80f blue:0.80f alpha:1.00f]
#define YiTextGray [UIColor colorWithRed:0.54f green:0.54f blue:0.54f alpha:1.00f]

//UM的宏
#define IOS_7_OR_LATER    ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)
#define IOS_8_OR_LATER    ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)


// block self
#define WEAKSELF typeof(self) __weak weakSelf = self;
#define STRONGSELF typeof(weakSelf) __strong strongSelf = weakSelf;

//字符串是否为空
#define ISNullString(str) ([str isKindOfClass:[NSNull class]] || str == nil || [str length] < 1 ? YES : NO )

//数组是否为空
#define ISNullArray(array) (array == nil || [array isKindOfClass:[NSNull class]] || array.count == 0 ||[array isEqual:[NSNull null]])

//字典是否为空
#define ISNullDict(dic) (dic == nil || [dic isKindOfClass:[NSNull class]] || dic.allKeys == 0 || [dic isEqual:[NSNull null]])

//是否是空对象
#define ISNullObject(_object) (_object == nil \
|| [_object isKindOfClass:[NSNull class]] \
|| ([_object respondsToSelector:@selector(length)] && [(NSData *)_object length] == 0) \
|| ([_object respondsToSelector:@selector(count)] && [(NSArray *)_object count] == 0))

/**
 *  this is not to be used by you, otherwise infringement
 */
#define CoderyiClientID @"2Abvwo7M117qA6xHhHAg6th+/28YYY4lA7Z23SXxJG8="
#define CoderyiClientSecret @"ZVQguKWUuj7votRcUIhThLhmfbrHytkGByT+OSeXxIPttGpbZd84jh1b/rNdl+ek"

#define RepositoriesTableViewCellheight 95
#define RankTableViewCellHeight 71
#endif

//http://www.jianshu.com/p/3d6c4416db5e
#ifndef    weakify
#if __has_feature(objc_arc)

#define weakify( x ) \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Wshadow\"") \
autoreleasepool{} __weak __typeof__(x) __weak_##x##__ = x; \
_Pragma("clang diagnostic pop")

#else

#define weakify( x ) \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Wshadow\"") \
autoreleasepool{} __block __typeof__(x) __block_##x##__ = x; \
_Pragma("clang diagnostic pop")

#endif
#endif

#ifndef    strongify
#if __has_feature(objc_arc)

#define strongify( x ) \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Wshadow\"") \
try{} @finally{} __typeof__(x) x = __weak_##x##__; \
_Pragma("clang diagnostic pop")

#else

#define strongify( x ) \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Wshadow\"") \
try{} @finally{} __typeof__(x) x = __block_##x##__; \
_Pragma("clang diagnostic pop")

#endif
#endif

