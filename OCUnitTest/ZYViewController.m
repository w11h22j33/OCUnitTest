//
//  ZYViewController.m
//  OCUnitTest
//
//  Created by wanghaijun on 14-3-4.
//  Copyright (c) 2014年 ___WANGHAIJUN___. All rights reserved.
//

#import "ZYViewController.h"

@interface ZYViewController ()

@end

@implementation ZYViewController

@synthesize textField;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (int)doubleValue:(int)value{
    
    return value * 2;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
