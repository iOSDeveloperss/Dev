//
//  MKNetworkEngine+DefaultSet.m
//  GitHubYi
//
//  Created by coderyi on 15/3/22.
//  Copyright (c) 2015年 www.coderyi.com. All rights reserved.
//

#import "MKNetworkEngine+DefaultSet.h"

@implementation MKNetworkEngine (DefaultSet)
- (id)initWithDefaultSet
{
    NSMutableDictionary *header;
//    header=[NSMutableDictionary dictionaryWithObject:[NSString stringWithFormat:@"Token %@",[UserModel sharedUser].token] forKey:@"Authorization"];
    [header setValue: @"application/json" forKey:@"Content-Type"];
    [header setValue: @"application/json" forKey:@"Accept"];

    self = [self initWithHostName:@"doc.easytransfer.cn" customHeaderFields:header];
    
    return self;
}
@end
