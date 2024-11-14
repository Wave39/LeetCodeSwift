//
//  Problems2000to2099.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 9/15/22.
//

import XCTest

final class Problems2000to2099: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem2000() throws {
        XCTAssertEqual(Problem2000().test("abcdefd", "d"), "dcbaefd")
        XCTAssertEqual(Problem2000().test("xyxzxe", "z"), "zxyxxe")
        XCTAssertEqual(Problem2000().test("abcd", "z"), "abcd")
    }

    func test_Problem2007() throws {
        XCTAssertEqual(Problem2007().test([1, 3, 4, 2, 6, 8]), [1, 3, 4])
        XCTAssertEqual(Problem2007().test([6, 3, 0, 1]), [])
        XCTAssertEqual(Problem2007().test([1]), [])
        XCTAssertEqual(Problem2007().test([1, 0, 0, 2, 0, 0]), [0, 0, 1])
    }

    func test_Problem2009() throws {
        XCTAssertEqual(Problem2009().test([4, 2, 5, 3]), 0)
        XCTAssertEqual(Problem2009().test([1, 2, 3, 5, 6]), 1)
        XCTAssertEqual(Problem2009().test([1, 10, 100, 1000]), 3)
        XCTAssertEqual(Problem2009().test([8, 5, 9, 9, 8, 4]), 2)
        XCTAssertEqual(Problem2009().test([41, 33, 29, 33, 35, 26, 47, 24, 18, 28]), 5)
    }

    func test_Problem2028() throws {
        XCTAssertEqual(Problem2028().test([3, 2, 4, 3], 4, 2), [6, 6])
        XCTAssertEqual(Problem2028().test([1, 5, 6], 3, 4), [2, 2, 2, 3])
        XCTAssertEqual(Problem2028().test([1, 2, 3, 4], 6, 4), [])
    }

    func test_Problem2044() throws {
        XCTAssertEqual(Problem2044().test([3, 1]), 2)
        XCTAssertEqual(Problem2044().test([2, 2, 2]), 7)
        XCTAssertEqual(Problem2044().test([3, 2, 1, 5]), 6)
    }

    func test_Problem2048() throws {
        XCTAssertEqual(Problem2048().test(1), 22)
        XCTAssertEqual(Problem2048().test(1000), 1333)
        XCTAssertEqual(Problem2048().test(3000), 3133)
        XCTAssertEqual(Problem2048().test(0), 1)
    }

    func test_Problem2058() throws {
        XCTAssertEqual(Problem2058().test(ListNode.arrayToList([3, 1])), [-1, -1])
        XCTAssertEqual(Problem2058().test(ListNode.arrayToList([5, 3, 1, 2, 5, 1, 2])), [1, 3])
        XCTAssertEqual(Problem2058().test(ListNode.arrayToList([1, 3, 2, 2, 3, 2, 2, 2, 7])), [3, 3])
    }

    func test_Problem2064() throws {
        XCTAssertEqual(Problem2064().test(6, [11, 6]), 3)
        XCTAssertEqual(Problem2064().test(7, [15, 10, 10]), 5)
        XCTAssertEqual(Problem2064().test(1, [100000]), 100000)
    }

    func test_Problem2068() throws {
        XCTAssertFalse(Problem2068().test("aaaa", "bccb"))
        XCTAssertTrue(Problem2068().test("abcdeef", "abaaacc"))
        XCTAssertTrue(Problem2068().test("cccddabba", "babababab"))
    }

    func test_Problem2070() throws {
        XCTAssertEqual(Problem2070().test([[1, 2], [3, 2], [2, 4], [5, 6], [3, 5]], [1, 2, 3, 4, 5, 6]), [2, 4, 5, 5, 6, 6])
        XCTAssertEqual(Problem2070().test([[1, 2], [1, 2], [1, 3], [1, 4]], [1]), [4])
        XCTAssertEqual(Problem2070().test([[10, 1000]], [5]), [0])
    }

    func test_Problem2073() throws {
        XCTAssertEqual(Problem2073().test([2, 3, 2], 2), 6)
        XCTAssertEqual(Problem2073().test([5, 1, 1, 1], 0), 8)
    }

    func test_Problem2096() throws {
        XCTAssertEqual(Problem2096().test(TreeNode([5, 1, 2, 3, nil, 6, 4]), 3, 6), "UURL")
        XCTAssertEqual(Problem2096().test(TreeNode([2, 1]), 2, 1), "L")
    }

}
