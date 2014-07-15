//
//  klarkNSString.m
//  String
//
//  Created by 易礼明 on 14-7-12.
//  Copyright (c) 2014年 tencent. All rights reserved.
//

#import "klarkNSString.h"
#import <Foundation/Foundation.h>
@implementation klarkNSString

-(NSString *)extractString:(NSString *)str//截取中间一段字符串（除第一个和最后一个字符）
{

    long count = [str length];
    NSRange rge = {1,count-2};
    NSString *string = [str substringWithRange:rge];
    return string;
    
}

-(NSString *)replacefirstblank:(NSString *)str1 string:(NSString *)str2
{
    NSRange range = [str1 rangeOfString:@" "];
    if (range.location == NSNotFound) {
        NSLog(@"please check you inputs contains blank");
    }
    NSLog(@"%ld %ld",range.location, range.length);
    //NSMutableString *NSt = [[NSMutableString alloc]init];//初始化类NSMutableString
    NSMutableString *str = [[NSMutableString alloc] initWithString:str1];//实例化NSMutableString
    [str replaceCharactersInRange:(range) withString:str2];
    return str;
}

@end
