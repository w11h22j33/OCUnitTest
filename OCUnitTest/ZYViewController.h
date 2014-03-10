//
//  ZYViewController.h
//  OCUnitTest
//
//  Created by wanghaijun on 14-3-4.
//  Copyright (c) 2014年 ___WANGHAIJUN___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZYViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textField;

- (int)doubleValue:(int)value;

@end
