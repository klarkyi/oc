//
//  klarkViewController.m
//  replaceString
//
//  Created by 易礼明 on 14-7-14.
//  Copyright (c) 2014年 tencent. All rights reserved.
//

#import "klarkViewController.h"
#import "klark.h"
@interface klarkViewController ()

@end

@implementation klarkViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)repalce:(id)sender
{
    NSString *str1 = self.textfild1.text;
    NSString *str2 = self.textfild2.text;
    NSString *str3 = self.textfild3.text;
    klark *kl = [[klark alloc]init];
    NSString *str4 = [kl extractString:str3];
    if ([str4 isEqualToString: @"error"]) {
        self.lable.text = @"确保替换内容大于三个字符";
    }
    else{
        NSString *str5 = [kl replacefirstblank:str1 match:str2 string:str4];
        if ([str5 isEqualToString: @"error"]) {
            self.lable.text = @"确保字符串中有匹配字符";
        }
        else{
            self.lable.text = str5;
        }
    }
}

-(IBAction)tap:(id)sender
{
    [self.textfild1 resignFirstResponder];
    [self.textfild2 resignFirstResponder];
    [self.textfild3 resignFirstResponder];
}
@end
