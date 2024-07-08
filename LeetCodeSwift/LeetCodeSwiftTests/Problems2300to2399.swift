//
//  Problems2300to2399.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 8/25/22.
//

import XCTest

class Problems2300to2399: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem2315() throws {
        XCTAssertEqual(Problem2315().test("l|*e*et|c**o|*de|"), 2)
        XCTAssertEqual(Problem2315().test("iamprogrammer"), 0)
        XCTAssertEqual(Problem2315().test("yo|uar|e**|b|e***au|tifu|l"), 5)
    }

    func test_Problem2331() throws {
        XCTAssertTrue(Problem2331().test(TreeNode([2, 1, 3, nil, nil, 0, 1])))

        XCTAssertFalse(Problem2331().test(TreeNode([0])))
    }

    func test_Problem2356() throws {
        XCTAssertTrue(Problem2356().test())
    }

    func test_Problem2370() throws {
        XCTAssertEqual(Problem2370().test("acfgbd", 2), 4)
        XCTAssertEqual(Problem2370().test("abcd", 3), 4)
    }

}
