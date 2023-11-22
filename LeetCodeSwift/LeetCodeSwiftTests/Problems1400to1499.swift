//
//  Problems1400to1499.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 9/1/22.
//

import XCTest

class Problems1400to1499: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem1424() throws {
        XCTAssertEqual(Problem1424().test([[1, 2, 3], [4, 5, 6], [7, 8, 9]]), [1, 4, 2, 7, 5, 3, 8, 6, 9])
        XCTAssertEqual(Problem1424().test([[1, 2, 3, 4, 5], [6, 7], [8], [9, 10, 11], [12, 13, 14, 15, 16]]), [1, 6, 2, 8, 7, 3, 9, 4, 12, 10, 5, 13, 11, 14, 15, 16])
    }

    func test_Problem1441() throws {
        XCTAssertEqual(Problem1441().test([1, 3], 3), ["Push", "Push", "Pop", "Push"])
        XCTAssertEqual(Problem1441().test([1, 2, 3], 3), ["Push", "Push", "Push"])
        XCTAssertEqual(Problem1441().test([1, 2], 4), ["Push", "Push"])
    }

    func test_Problem1448() throws {
        XCTAssertEqual(Problem1448().test(TreeNode([3, 1, 4, 3, nil, 1, 5])), 4)
        XCTAssertEqual(Problem1448().test(TreeNode([3, 3, nil, 4, 2])), 3)
        XCTAssertEqual(Problem1448().test(TreeNode([1])), 1)
    }

    func test_Problem1457() throws {
        XCTAssertEqual(Problem1457().test(TreeNode([2, 3, 1, 3, 1, nil, 1])), 2)
        XCTAssertEqual(Problem1457().test(TreeNode([2, 1, 1, 1, 3, nil, nil, nil, nil, nil, 1])), 1)
        XCTAssertEqual(Problem1457().test(TreeNode([9])), 1)
    }
    
    func test_Problem1480() throws {
        let solve1 = Problem1480().test([1, 2, 3, 4])
        XCTAssertEqual(solve1, [1, 3, 6, 10])
        let solve2 = Problem1480().test([1, 1, 1, 1, 1])
        XCTAssertEqual(solve2, [1, 2, 3, 4, 5])
        let solve3 = Problem1480().test([3, 1, 2, 10, 1])
        XCTAssertEqual(solve3, [3, 4, 6, 16, 17])
    }
    
}
