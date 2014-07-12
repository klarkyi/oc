//
//  klarkViewController.m
//  helloworld
//
//  Created by 易礼明 on 14-7-12.
//  Copyright (c) 2014年 tencent. All rights reserved.
//

#import "klarkViewController.h"

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

- (void)sayhello:(id)sender
{
    NSString *text = self.textfield.text;
    //NSRange range = {1,-1};
    //NSString *str = [text substringWithRange:range];
    self.lable.text = [[@"Hello" stringByAppendingString:text] stringByAppendingString: @"World"];
    
}

- (void)tip:(id)sender
{
    [self.textfield resignFirstResponder];
}


@end
