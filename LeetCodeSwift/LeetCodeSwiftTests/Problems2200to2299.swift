//
//  Problems2200to2299.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 10/11/23.
//

import XCTest

class Problems2200to2299: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem2235() throws {
        XCTAssertEqual(Problem2235().test(12, 5), 17)
        XCTAssertEqual(Problem2235().test(-10, 4), -6)
    }

    func test_Problem2251() throws {
        XCTAssertEqual(Problem2251().test([[1, 6], [3, 7], [9, 12], [4, 13]], [2, 3, 7, 11]), [1, 2, 2, 2])
        XCTAssertEqual(Problem2251().test([[1, 10], [3, 3]], [3, 3, 2]), [2, 2, 1])
    }

    func test_Problem2265() throws {
        XCTAssertEqual(Problem2265().test(TreeNode([4, 8, 5, 0, 1, nil, 6])), 5)
        XCTAssertEqual(Problem2265().test(TreeNode([1])), 1)
    }

}
