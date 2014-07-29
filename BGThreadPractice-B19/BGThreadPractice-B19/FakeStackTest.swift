//
//  FakeStackTest.swift
//  BGThreadPractice-B19
//
//  Created by Leonardo Lee on 7/28/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import XCTest

class FakeStackTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
	
	func testStackInit() {
		var testStack = FakeStack(numberOfStacks: 10)
		XCTAssertEqual(testStack.stackObject.count, 10, "There should be 10 variables in testStack!")
	}

	func testStackPop() {
		var testStackA = FakeStack(numberOfStacks: 10)
		testStackA.pop()
		XCTAssertEqual(testStackA.stackObject.count, 9, "Stacks are LIFO!")
	}
	
	func testStackPush() {
		var testStackB = FakeStack(numberOfStacks: 10)
		testStackB.push()
		XCTAssertNotNil(testStackB.stackObject[10], "Stacks add at the end of the line!")
		XCTAssertEqual(testStackB.stackObject[10], 10, "Somethigns weird")
	}
}
