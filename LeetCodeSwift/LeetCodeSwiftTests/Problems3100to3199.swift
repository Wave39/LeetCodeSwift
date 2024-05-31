//
//  Problems3100to3199.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 5/21/24.
//

import XCTest

final class Problems3100to3199: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem3151() throws {
        XCTAssertTrue(Problem3151().test([1]))
        XCTAssertTrue(Problem3151().test([2, 1, 4]))

        XCTAssertFalse(Problem3151().test([4, 3, 1, 6]))
    }

    func test_Problem3162() throws {
        XCTAssertEqual(Problem3162().test([1, 3, 4], [1, 3, 4], 1), 5)
        XCTAssertEqual(Problem3162().test([1, 2, 4, 12], [2, 4], 3), 2)
    }
}
