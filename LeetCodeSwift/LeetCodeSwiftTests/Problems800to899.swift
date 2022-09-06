//
//  Problems800to899.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 8/26/22.
//

import XCTest

class Problems800to899: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem814() throws {
        let a3_1 = TreeNode(0)
        let a3_2 = TreeNode(1)
        let a2 = TreeNode(0, a3_1, a3_2)
        let aRoot = TreeNode(1, nil, a2)
        let solve1 = Problem814().test(aRoot)
        XCTAssertEqual(solve1!.val, 1)
        XCTAssertEqual(solve1!.nodeCount(), 3)

        let b3_1 = TreeNode(0)
        let b3_2 = TreeNode(0)
        let b3_3 = TreeNode(0)
        let b3_4 = TreeNode(1)
        let b2_1 = TreeNode(0, b3_1, b3_2)
        let b2_2 = TreeNode(1, b3_3, b3_4)
        let bRoot = TreeNode(1, b2_1, b2_2)
        let solve2 =  Problem814().test(bRoot)
        XCTAssertEqual(solve2!.val, 1)
        XCTAssertEqual(solve2!.nodeCount(), 3)

        let c4_1 = TreeNode(0)
        let c3_1 = TreeNode(1, c4_1, nil)
        let c3_2 = TreeNode(1)
        let c3_3 = TreeNode(0)
        let c3_4 = TreeNode(1)
        let c2_1 = TreeNode(1, c3_1, c3_2)
        let c2_2 = TreeNode(0, c3_3, c3_4)
        let cRoot = TreeNode(1, c2_1, c2_2)
        let solve3 =  Problem814().test(cRoot)
        XCTAssertEqual(solve3!.val, 1)
        XCTAssertEqual(solve3!.nodeCount(), 6)

        let dRoot = TreeNode(0)
        let solve4 =  Problem814().test(dRoot)
        XCTAssertNil(solve4)
    }

    func test_Problem869() throws {
        XCTAssertTrue(Problem869().test(1))
        XCTAssertTrue(Problem869().test(2410))

        XCTAssertFalse(Problem869().test(10))
        XCTAssertFalse(Problem869().test(2411))
    }

    func test_Problem876() throws {
        let solve1 = Problem876().test(ListNode.arrayToList([1, 2, 3, 4, 5]))
        XCTAssertEqual(solve1!.toArray(), [3, 4, 5])
        let solve2 = Problem876().test(ListNode.arrayToList([1, 2, 3, 4, 5, 6]))
        XCTAssertEqual(solve2!.toArray(), [4, 5, 6])
    }
    
}
