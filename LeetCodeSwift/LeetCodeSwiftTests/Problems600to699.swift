//
//  Problems600to699.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 9/1/22.
//

import XCTest

class Problems600to699: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem637() throws {
        let a9 = TreeNode(9)
        let a15 = TreeNode(15)
        let a7 = TreeNode(7)
        let a20 = TreeNode(20, a15, a7)
        let aRoot = TreeNode(3, a9, a20)
        let solve1 = Problem637().test(aRoot)
        XCTAssertEqual(solve1, [3.0, 14.5, 11.0])

        let b15 = TreeNode(15)
        let b7 = TreeNode(7)
        let b9 = TreeNode(9, b15, b7)
        let b20 = TreeNode(20)
        let bRoot = TreeNode(3, b9, b20)
        let solve2 = Problem637().test(bRoot)
        XCTAssertEqual(solve2, [3.0, 14.5, 11.0])
    }

}
