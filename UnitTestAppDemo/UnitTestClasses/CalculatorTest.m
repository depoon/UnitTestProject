//
//  DemoTest.m
//  UnitTestAppDemo
//
//  Created by Kenneth Poon on 26/7/14.
//  Copyright (c) 2014 Kenneth Poon. All rights reserved.
//

#import "CoverableXCTestCase.h"
#import "Calculator.h"

@interface CalculatorTest : CoverableXCTestCase

@end

@implementation CalculatorTest

Calculator* calculator;
- (void)setUp{
    [super setUp];
    calculator = [Calculator new];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown{
    calculator = nil;
    [super tearDown];
}

- (void)testAdditionOnePlusOne{
    int expected = 2;
    int actual = [calculator value: 1 add: 1];
    XCTAssertEqual(expected, actual, @"");
}

@end
