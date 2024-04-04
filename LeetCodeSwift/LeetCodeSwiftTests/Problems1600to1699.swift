//
//  Problems1600to1699.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 9/22/22.
//

import XCTest

final class Problems1600to1699: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem1609() throws {
        XCTAssertTrue(Problem1609().test(TreeNode([1, 10, 4, 3, nil, 7, 9, 12, 8, 6, nil, nil, 2])))
        XCTAssertFalse(Problem1609().test(TreeNode([5, 4, 2, 3, 3, 7])))
        XCTAssertFalse(Problem1609().test(TreeNode([5, 9, 1, 3, 5, 7])))
    }

    func test_Problem1614() throws {
        XCTAssertEqual(Problem1614().test(""), 0)
        XCTAssertEqual(Problem1614().test("()()"), 1)
        XCTAssertEqual(Problem1614().test("()(()())"), 2)
        XCTAssertEqual(Problem1614().test("(1+(2*3)+((8)/4))+1"), 3)
        XCTAssertEqual(Problem1614().test("(1)+((2))+(((3)))"), 3)
    }

    func test_Problem1615() throws {
        XCTAssertEqual(Problem1615().test(4, [[0, 1], [0, 3], [1, 2], [1, 3]]), 4)
        XCTAssertEqual(Problem1615().test(5, [[0, 1], [0, 3], [1, 2], [1, 3], [2, 3], [2, 4]]), 5)
        XCTAssertEqual(Problem1615().test(8, [[0, 1], [1, 2], [2, 3], [2, 4], [5, 6], [5, 7]]), 5)
    }

    func test_Problem1637() throws {
        XCTAssertEqual(Problem1637().test([[8, 7], [9, 9], [7, 4], [9, 7]]), 1)
        XCTAssertEqual(Problem1637().test([[3, 1], [9, 0], [1, 0], [1, 4], [5, 3], [8, 8]]), 3)
    }
    
    func test_Problem1658() throws {
        XCTAssertEqual(Problem1658().test([1, 1, 4, 2, 3], 5), 2)
        XCTAssertEqual(Problem1658().test([5, 6, 7, 8, 9], 4), -1)
        XCTAssertEqual(Problem1658().test([3, 2, 20, 1, 1, 3], 10), 5)
    }

    func test_Problem1662() throws {
        XCTAssertTrue(Problem1662().test(["ab", "c"], ["a", "bc"]))
        XCTAssertFalse(Problem1662().test(["a", "cb"], ["ab", "c"]))
        XCTAssertTrue(Problem1662().test(["abc", "d", "defg"], ["abcddefg"]))
    }

    func test_Problem1669() throws {
        XCTAssertEqual(Problem1669().test(ListNode.arrayToList([10, 1, 13, 6, 9, 5]), 3, 4, ListNode.arrayToList([1000000, 1000001, 1000002]))?.toArray(), [10, 1, 13, 1000000, 1000001, 1000002, 5])
        XCTAssertEqual(Problem1669().test(ListNode.arrayToList([0, 1, 2, 3, 4, 5, 6]), 2, 5, ListNode.arrayToList([1000000, 1000001, 1000002, 1000003, 1000004]))?.toArray(), [0, 1, 1000000, 1000001, 1000002, 1000003, 1000004, 6])
    }

    func test_Problem1680() throws {
        XCTAssertEqual(Problem1680().test(1), 1)
        XCTAssertEqual(Problem1680().test(3), 27)
        XCTAssertEqual(Problem1680().test(12), 505379714)
    }

    func test_Problem1688() throws {
        XCTAssertEqual(Problem1688().test(7), 6)
        XCTAssertEqual(Problem1688().test(14), 13)
    }

}
