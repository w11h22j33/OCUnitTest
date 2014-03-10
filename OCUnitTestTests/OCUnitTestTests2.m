//
//  OCUnitTestTests.m
//  OCUnitTestTests
//
//  Created by wanghaijun on 14-3-4.
//  Copyright (c) 2014年 ___WANGHAIJUN___. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "ZYViewController.h"

#import "ZYAppDelegate.h"

@interface OCUnitTestTests2 : XCTestCase

@property (nonatomic,strong) ZYViewController * viewController;

- (void)doTest:(int)value expect:(int)expect;

- (int)getValue;

@end

@implementation OCUnitTestTests2

@synthesize viewController;

- (void)setUp
{
    [super setUp];
    
    ZYAppDelegate* delegate = [[UIApplication sharedApplication] delegate];
    
    UIWindow *window = delegate.window;
    
    viewController = (ZYViewController*)window.rootViewController;
    
}

- (void)tearDown
{
    self.viewController = nil;
    
    [super tearDown];
}

- (int)getValue{
    
    static int value = 1;
    
    value +=1;
    
    NSLog(@"test 2 value:%d",value);
    
    return value;
}

- (void)doTest:(int)value expect:(int)expect{
    
    int doubleValue = [self.viewController doubleValue:value];
    
    XCTAssertTrue(expect == doubleValue, @"期望值：%d，实际值：%d",expect,doubleValue);
    
}

- (void)testDoubleValue{
    
    for (int count = 0; count < 10; count++) {
        
        int value = [self getValue];
        
        [self doTest:value expect:value*2];
    }
    
}

- (void)testInput{
    
    ZYAppDelegate* delegate = [[UIApplication sharedApplication] delegate];
    
    UIWindow *window = delegate.window;
    
    viewController = (ZYViewController*)window.rootViewController;
    
    viewController.textField.placeholder = @"请输入...";
    
    [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:10]];
    
    XCTAssertTrue([viewController.textField.text length]>0, @"textField had not input");
}

@end
