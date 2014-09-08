//
//  CoverableXCTestCase.m
//  UnitTestAppDemo
//
//  Created by Kenneth Poon on 6/6/14.
//  Copyright (c) 2014 Kenneth Poon. All rights reserved.
//

#import "CoverableXCTestCase.h"

@implementation CoverableXCTestCase

extern void __gcov_flush(void);

-(void) setUp{
    [super setUp];
}

-(void) tearDown{
    __gcov_flush();
    [super tearDown];
}


@end
