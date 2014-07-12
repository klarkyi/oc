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


-(void) test_extractString
{
    
    klarkNSString *kns = [[klarkNSString alloc]init];
    NSString *string = [kns extractString:@"123456789"];
    NSLog(@"%@",string);
}

@end




int main(int argc, const char * argv[])
{
    TestClass *tc = [[TestClass alloc]init];
    [tc test_extractString];
    
    
    return 0;
}
