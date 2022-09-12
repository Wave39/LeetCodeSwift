//
//  Problems900to999.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 8/31/22.
//

import XCTest

class Problems900to999: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem942() throws {
        XCTAssertEqual(Problem942().test("IDID"), [0, 4, 1, 3, 2])
        XCTAssertEqual(Problem942().test("III"), [0, 1, 2, 3])
        XCTAssertEqual(Problem942().test("DDI"), [3, 2, 0, 1])
    }

    func test_Problem948() throws {
        XCTAssertEqual(Problem948().test([100], 50), 0)
        XCTAssertEqual(Problem948().test([100, 200], 150), 1)
        XCTAssertEqual(Problem948().test([100, 200, 300, 400], 200), 2)
        XCTAssertEqual(Problem948().test([52, 65, 35, 88, 28, 1, 4, 68, 56, 95], 94), 5)
    }
    
    func test_Problem967() throws {
        XCTAssertEqual(Problem967().test(3, 7), [181, 292, 707, 818, 929])
        XCTAssertEqual(Problem967().test(2, 1), [10, 12, 21, 23, 32, 34, 43, 45, 54, 56, 65, 67, 76, 78, 87, 89, 98])
        XCTAssertEqual(Problem967().test(3, 0), [111, 222, 333, 444, 555, 666, 777, 888, 999])
        XCTAssertEqual(Problem967().test(3, 9), [909])
    }

    func test_Problem987() throws {
        let a15 = TreeNode(15)
        let a7 = TreeNode(7)
        let a20 = TreeNode(20, a15, a7)
        let a9 = TreeNode(9)
        let aRoot = TreeNode(3, a9, a20)
        XCTAssertEqual(Problem987().test(aRoot), [[9], [3, 15], [20], [7]])

        let b4 = TreeNode(4)
        let b5 = TreeNode(5)
        let b6 = TreeNode(6)
        let b7 = TreeNode(7)
        let b2 = TreeNode(2, b4, b5)
        let b3 = TreeNode(3, b6, b7)
        let bRoot = TreeNode(1, b2, b3)
        XCTAssertEqual(Problem987().test(bRoot), [[4], [2], [1, 5, 6], [3], [7]])

        let c4 = TreeNode(4)
        let c5 = TreeNode(5)
        let c6 = TreeNode(6)
        let c7 = TreeNode(7)
        let c2 = TreeNode(2, c4, c6)
        let c3 = TreeNode(3, c5, c7)
        let cRoot = TreeNode(1, c2, c3)
        XCTAssertEqual(Problem987().test(cRoot), [[4], [2], [1, 5, 6], [3], [7]])

        let d0 = TreeNode(0)
        let d2a = TreeNode(2)
        let d1 = TreeNode(1, d0, d2a)
        let d2b = TreeNode(2)
        let d4 = TreeNode(4, d2b, nil)
        let dRoot = TreeNode(3, d1, d4)
        XCTAssertEqual(Problem987().test(dRoot), [[0], [1], [3, 2, 2], [4]])
    }
    
}
