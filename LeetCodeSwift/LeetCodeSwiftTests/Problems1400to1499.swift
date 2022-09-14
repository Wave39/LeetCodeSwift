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

    func test_Problem1448() throws {
        let a3_3 = TreeNode(3)
        let a2_1 = TreeNode(1, a3_3, nil)
        let a3_1 = TreeNode(1)
        let a3_5 = TreeNode(5)
        let a2_4 = TreeNode(4, a3_1, a3_5)
        let aRoot = TreeNode(3, a2_1, a2_4)
        let solve1 = Problem1448().test(aRoot)
        XCTAssertEqual(solve1, 4)

        let b3_4 = TreeNode(4)
        let b3_2 = TreeNode(2)
        let b2_3 = TreeNode(3, b3_4, b3_2)
        let bRoot = TreeNode(3, b2_3, nil)
        let solve2 = Problem1448().test(bRoot)
        XCTAssertEqual(solve2, 3)

        let cRoot = TreeNode(1)
        let solve3 = Problem1448().test(cRoot)
        XCTAssertEqual(solve3, 1)
    }

    func test_Problem1457() throws {
        XCTAssertEqual(Problem1457().test(TreeNode.nodeFromArray([2, 3, 1, 3, 1, nil, 1])), 2)
        XCTAssertEqual(Problem1457().test(TreeNode.nodeFromArray([2, 1, 1, 1, 3, nil, nil, nil, nil, nil, 1])), 1)
        XCTAssertEqual(Problem1457().test(TreeNode.nodeFromArray([9])), 1)
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
