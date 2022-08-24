//
//  Problems100to199.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 8/24/22.
//

import XCTest

class Problems100to199: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem100() throws {
        let left1_3 = TreeNode(3)
        let left1_2 = TreeNode(2)
        let left1_root = TreeNode(1, left1_2, left1_3)
        let right1_3 = TreeNode(3)
        let right1_2 = TreeNode(2)
        let right1_root = TreeNode(1, right1_2, right1_3)
        let solve1 = Problem100().test(left1_root, right1_root)
        XCTAssertTrue(solve1)

        let left2_2 = TreeNode(2)
        let left2_root = TreeNode(1, left2_2, nil)
        let right2_2 = TreeNode(2)
        let right2_root = TreeNode(2, nil, right2_2)
        let solve2 = Problem100().test(left2_root, right2_root)
        XCTAssertFalse(solve2)

        let left3_2 = TreeNode(2)
        let left3_1 = TreeNode(1)
        let left3_root = TreeNode(1, left3_2, left3_1)
        let right3_2 = TreeNode(2)
        let right3_1 = TreeNode(1)
        let right3_root = TreeNode(1, right3_1, right3_2)
        let solve3 = Problem100().test(left3_root, right3_root)
        XCTAssertFalse(solve3)
    }

}
