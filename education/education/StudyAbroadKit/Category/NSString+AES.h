//
//  NSString+AES.h
//  ITBCF
//
//  Created by ITB on 16/3/1.
//  Copyright © 2016年 ITB. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonCryptor.h>
#import "GTMBase64.h"
@interface NSString(AES)

//加密字符串
- (NSString*) AES128EncryptForkey:(NSString *)aKey;

//解密字符串
- (NSString*) AES128DecryptForkey:(NSString *)aKey;

- (BOOL)validateMobile;
- (BOOL)validateIntNumber;
- (BOOL)validateString:(NSString *)string;
- (BOOL)validateNumberWithFloat;
- (NSDictionary *)dictionaryWithJsonString;
//字典转为Json字符串
-(NSString *)dictionaryToJson:(NSDictionary *)dic;
//修复精度
+(NSString *)reviseString:(NSString *)str;

//SHA1加密
- (NSString*) sha1;
//MD5加密
-(NSString *) md5;

@end
