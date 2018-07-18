//
// Copyright (c) 2013 Robert Wijas. All rights reserved.
//

#import <XCTest/XCTest.h>

#define XCTAssertEqualCGRect(actual, expected) (XCTAssertEqualObjects(NSStringFromCGRect(actual), NSStringFromCGRect(expected)))
#define XCTAssertEqualCGSize(actual, expected) (XCTAssertEqualObjects(NSStringFromCGSize(actual), NSStringFromCGSize(expected)))
#define XCTAssertEqualCGPoint(actual, expected) (XCTAssertEqualObjects(NSStringFromCGPoint(actual), NSStringFromCGPoint(expected)))
#define XCTAssertEqualUIEdgeInsets(actual, expected) (XCTAssertEqualObjects(NSStringFromUIEdgeInsets(actual), NSStringFromUIEdgeInsets(expected)))
#define XCTAssertEqualUIOffset(actual, expected) (XCTAssertEqualObjects(NSStringFromUIOffset(actual), NSStringFromUIOffset(expected)))

#define UISSAssertEqualSelectors(actual, expected) (XCTAssertEqualObjects(NSStringFromSelector(actual), NSStringFromSelector(expected)))


@interface UISSTests : XCTestCase

@end
