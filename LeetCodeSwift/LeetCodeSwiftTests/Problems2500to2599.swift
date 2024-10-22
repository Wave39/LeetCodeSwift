//
//  Problems2500to2599.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 2/22/24.
//

import XCTest

final class Problems2500to2599: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem2500() throws {
        XCTAssertEqual(Problem2500().test([[1, 2, 4], [3, 3, 1]]), 8)
        XCTAssertEqual(Problem2500().test([[10]]), 10)
    }

    func test_Problem2530() throws {
        XCTAssertEqual(Problem2530().test([10, 10, 10, 10, 10], 5), 50)
        XCTAssertEqual(Problem2530().test([1, 10, 3, 3, 3], 3), 17)
    }

    func test_Problem2583() throws {
        XCTAssertEqual(Problem2583().test(TreeNode([5, 8, 9, 2, 1, 3, 7, 4, 6]), 2), 13)
        XCTAssertEqual(Problem2583().test(TreeNode([1, 2, nil, 3]), 1), 3)
        XCTAssertEqual(Problem2583().test(TreeNode([411310, 211244, 111674]), 2), 322918)
    }

    func test_Problem2597() throws {
        XCTAssertEqual(Problem2597().test([2, 4, 6], 2), 4)
        XCTAssertEqual(Problem2597().test([1], 1), 1)
    }

}
