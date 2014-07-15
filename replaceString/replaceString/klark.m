//
//  klark.m
//  replaceString
//
//  Created by 易礼明 on 14-7-15.
//  Copyright (c) 2014年 tencent. All rights reserved.
//

#import "klark.h"
#import <Foundation/Foundation.h>
@implementation klark

-(NSString *)extractString:(NSString *)str//截取中间一段字符串（除第一个和最后一个字符）
{
    
    long count = [str length];
    if (count <3) {
        return @"error";
    }
    else {
    NSRange rge = {1,count-2};
    NSString *string = [str substringWithRange:rge];
    return string;
    }
}

-(NSString *)replacefirstblank:(NSString *)str1 match:(NSString *)str2 string:(NSString *)str3
{
    NSRange range = [str1 rangeOfString:str2];
    if (range.location == NSNotFound) {
        //NSLog(@"No find,please check you inputs");
        return @"error";
    }
    //NSMutableString *NSt = [[NSMutableString alloc]init];//初始化类NSMutableString
    NSMutableString *str = [[NSMutableString alloc] initWithString:str1];//实例化NSMutableString
    [str replaceCharactersInRange:(range) withString:str3];
    return str;
}
/*
- (IBAction)showAlert
{
    
    UIAlertView *alberView = [[UIAlertView alloc] initWithTitle:@"123" message:(@"no find") delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"123"
                              message:@"No find,please check you inputs!"
                              delegate:nil
                              cancelButtonTitle:@"OK"
                              otherButtonTitles:nil];
    [alberView show];
}
*/
@end
