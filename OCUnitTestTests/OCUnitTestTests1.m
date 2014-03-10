//
//  OCUnitTestTests.m
//  OCUnitTestTests
//
//  Created by wanghaijun on 14-3-4.
//  Copyright (c) 2014年 ___WANGHAIJUN___. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "ZYViewController.h"

@interface OCUnitTestTests1 : XCTestCase

@property (nonatomic,strong) ZYViewController * viewController;

- (void)doTest:(int)value expect:(int)expect;

- (int)getValue;

@end

@implementation OCUnitTestTests1

@synthesize viewController;

- (void)setUp
{
    [super setUp];
    
    viewController = [[ZYViewController alloc] init];
    
}

- (void)tearDown
{
    self.viewController = nil;
    
    [super tearDown];
}

- (void)doTest:(int)value expect:(int)expect{
    
    int doubleValue = [self.viewController doubleValue:value];
    
    XCTAssertTrue(expect == doubleValue, @"期望值：%d，实际值：%d",expect,doubleValue);
    
}

- (int)getValue{
    
    static int value = 1;
    
    value +=1;
    
    NSLog(@"test 1 value:%d",value);
    
    return value;
}

- (void)testDoubleValue{
    
    for (int count = 0; count < 10; count++) {
        
        int value = [self getValue];
        
        [self doTest:value expect:value*2];
    }
    
}

@end
