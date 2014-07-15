//
//  main.m
//  String
//
//  Created by 易礼明 on 14-7-12.
//  Copyright (c) 2014年 tencent. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "klarkNSString.h"
@interface TestClass : NSObject
@end
@implementation TestClass
{

}


-(void) test_extractString//截取中间一段字符串（除第一个和最后一个字符）
{
    
    klarkNSString *kns = [[klarkNSString alloc]init];
    NSString *string = [kns extractString:@"123456789"];
    NSLog(@"%@",string);
}


-(void)test_replaceFirstBlank//将第一个空格替换成字符串
{
    klarkNSString *kns = [[klarkNSString alloc]init];
    NSString *string1 = [kns replacefirstblank:@"Hello world !" string:@"klark"];
    NSLog(@"%@",string1);
}


@end




int main(int argc, const char * argv[])
{
    TestClass *tc = [[TestClass alloc]init];
    //[tc test_extractString];
    [tc test_replaceFirstBlank];
    
    return 0;
}
