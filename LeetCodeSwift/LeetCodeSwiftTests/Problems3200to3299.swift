//
//  Problems3200to3299.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 9/6/24.
//

import XCTest

final class Problems3200to3299: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem3217() throws {
        XCTAssertEqual(Problem3217().test([1, 2, 3], ListNode.arrayToList([1, 2, 3, 4, 5]))!.toArray(), [4, 5])
        XCTAssertEqual(Problem3217().test([1], ListNode.arrayToList([1, 2, 1, 2, 1, 2]))!.toArray(), [2, 2, 2])
        XCTAssertEqual(Problem3217().test([5], ListNode.arrayToList([1, 2, 3, 4]))!.toArray(), [1, 2, 3, 4])
    }

}
