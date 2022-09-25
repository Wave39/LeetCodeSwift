//
//  Problems1to99.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 8/23/22.
//

import XCTest

class Problems1to99: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem1() throws {
        let solve1 = Problem1().test([2, 7, 11, 15], 9)
        XCTAssertEqual(solve1, [0, 1])

        let solve2 = Problem1().test([3, 2, 4], 6)
        XCTAssertEqual(solve2, [1, 2])
    }

    func test_Problem2() throws {
        let solve1a = ListNode.arrayToList([2, 4, 3])
        let solve1b = ListNode.arrayToList([5, 6, 4])
        let solve1 = Problem2().test(solve1a, solve1b)
        XCTAssertEqual(solve1?.toArray(), [7,0,8])

        let solve2a = ListNode.arrayToList([0])
        let solve2b = ListNode.arrayToList([0])
        let solve2 = Problem2().test(solve2a, solve2b)
        XCTAssertEqual(solve2?.toArray(), [0])

        let solve3a = ListNode.arrayToList([9, 9, 9, 9, 9, 9, 9])
        let solve3b = ListNode.arrayToList([9, 9, 9, 9])
        let solve3 = Problem2().test(solve3a, solve3b)
        XCTAssertEqual(solve3?.toArray(), [8,9,9,9,0,0,0,1])
    }

    func test_Problem3() throws {
        XCTAssertEqual(Problem3().test("abcabcbb"), 3)
        XCTAssertEqual(Problem3().test("bbbbb"), 1)
        XCTAssertEqual(Problem3().test("pwwkew"), 3)
        XCTAssertEqual(Problem3().test("aa"), 1)
        XCTAssertEqual(Problem3().test(""), 0)
        XCTAssertEqual(Problem3().test(" "), 1)
        XCTAssertEqual(Problem3().test(Problem3().testData1), 95)
    }

    func test_Problem4() throws {
        let solve1 = Problem4().test([1, 3], [2])
        XCTAssertEqual(solve1, 2.0)

        let solve2 = Problem4().test([1, 2], [3, 4])
        XCTAssertEqual(solve2, 2.5)
    }

    func test_Problem5() throws {
        let solve1 = Problem5().test("babad")
        XCTAssert(solve1 == "bab" || solve1 == "aba")
        XCTAssertEqual(Problem5().test("cbbd"), "bb")
        XCTAssertEqual(Problem5().test(Problem5().testData1), "ranynar")
    }

    func test_Problem6() throws {
        XCTAssertEqual(Problem6().test("PAYPALISHIRING", 3), "PAHNAPLSIIGYIR")
        XCTAssertEqual(Problem6().test("PAYPALISHIRING", 4), "PINALSIGYAHRPI")
        XCTAssertEqual(Problem6().test("A", 1), "A")
        XCTAssertEqual(Problem6().test("AB", 1), "AB")
    }

    func test_Problem7() throws {
        XCTAssertEqual(Problem7().test(123), 321)
        XCTAssertEqual(Problem7().test(-123), -321)
        XCTAssertEqual(Problem7().test(120), 21)
        XCTAssertEqual(Problem7().test(1534236469), 0)
    }

    func test_Problem8() throws {
        XCTAssertEqual(Problem8().test("42"), 42)
        XCTAssertEqual(Problem8().test("   -42"), -42)
        XCTAssertEqual(Problem8().test("4193 with words"), 4193)
        XCTAssertEqual(Problem8().test("-91283472332"), -2147483648)
        XCTAssertEqual(Problem8().test(""), 0)
        XCTAssertEqual(Problem8().test(" "), 0)
    }

    func test_Problem20() throws {
        XCTAssertTrue(Problem20().test("()"))
        XCTAssertTrue(Problem20().test("()[]{}"))
        XCTAssertFalse(Problem20().test("(]"))
        XCTAssertFalse(Problem20().test("]"))
    }

    func test_Problem21() throws {
        let solve1 = Problem21().test(ListNode.arrayToList([1, 2, 4]), ListNode.arrayToList([1, 3, 4]))
        XCTAssertEqual(solve1!.toArray(), [1, 1, 2, 3, 4, 4])
        let solve2 = Problem21().test(nil, nil)
        XCTAssertNil(solve2)
        let solve3 = Problem21().test(nil, ListNode.arrayToList([0]))
        XCTAssertEqual(solve3!.toArray(), [0])
        let solve4 = Problem21().test(ListNode.arrayToList([-10, -10, -9, -4, 1, 6, 6]), ListNode.arrayToList([-7]))
        XCTAssertEqual(solve4!.toArray(), [-10, -10, -9, -7, -4, 1, 6, 6])
    }
    
    func test_Problem26() throws {
        var testArray = [1, 1, 2]
        let n1 = Problem26().test(&testArray)
        XCTAssertEqual(n1, 2)
        XCTAssertEqual(testArray[...1], [1, 2])

        testArray = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
        let n2 = Problem26().test(&testArray)
        XCTAssertEqual(n2, 5)
        XCTAssertEqual(testArray[...4], [0, 1, 2, 3, 4])
    }

    func test_Problem36() throws {
        XCTAssertTrue(Problem36().test(Problem36().testData1))

        XCTAssertFalse(Problem36().test(Problem36().testData2))
        XCTAssertFalse(Problem36().test(Problem36().testData3))
    }

    func test_Problem42() throws {
        XCTAssertEqual(Problem42().test([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]), 6)
        XCTAssertEqual(Problem42().test([4, 2, 0, 3, 2, 5]), 9)
    }

    func test_Problem48() throws {
        var array1 = [[1, 2, 3],[4, 5, 6],[7, 8, 9]]
        Problem48().test(&array1)
        XCTAssertEqual(array1, [[7, 4, 1], [8, 5, 2], [9, 6, 3]])
        var array2 = [[5, 1, 9, 11],[2, 4, 8, 10],[13, 3, 6, 7],[15, 14, 12, 16]]
        Problem48().test(&array2)
        XCTAssertEqual(array2, [[15, 13, 2, 5], [14, 3, 4, 1], [12, 6, 8, 9], [16, 7, 10, 11]])
    }

    func test_Problem53() throws {
        XCTAssertEqual(Problem53().test([-2, 1, -3, 4, -1, 2, 1, -5, 4]), 6)
        XCTAssertEqual(Problem53().test([1]), 1)
        XCTAssertEqual(Problem53().test([5, 4, -1, 7, 8]), 23)
    }

    func test_Problem62() throws {
        XCTAssertEqual(Problem62().test(3, 7), 28)
        XCTAssertEqual(Problem62().test(3, 2), 3)
    }
    
    func test_Problem70() throws {
        XCTAssertEqual(Problem70().test(2), 2)
        XCTAssertEqual(Problem70().test(3), 3)
        XCTAssertEqual(Problem70().test(4), 5)
    }

    func test_Problem74() throws {
        XCTAssertTrue(Problem74().test([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]], 3))

        XCTAssertFalse(Problem74().test([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]], 13))
    }

    func test_Problem83() throws {
        let solve1 = Problem83().test(ListNode.arrayToList([1, 1, 2]))
        XCTAssertEqual(solve1!.toArray(), [1, 2])
        let solve2 = Problem83().test(ListNode.arrayToList([1, 1, 2, 3, 3]))
        XCTAssertEqual(solve2!.toArray(), [1, 2, 3])
        XCTAssertNil(Problem83().test(nil))
    }

    func test_Problem88() throws {
        var nums1 = [1, 2, 3, 0, 0, 0]
        Problem88().test(&nums1, 3, [2, 5, 6], 3)
        XCTAssertEqual(nums1, [1, 2, 2, 3, 5, 6])
        var nums2 = [1]
        Problem88().test(&nums2, 1, [], 0)
        XCTAssertEqual(nums2, [1])
        var nums3 = [0]
        Problem88().test(&nums3, 0, [1], 1)
        XCTAssertEqual(nums3, [1])
    }

    func test_Problem94() throws {
        let solve1 = Problem94().test(TreeNode.nodeFromArray([1, nil, 2, 3]))
        XCTAssertEqual(solve1, [1, 3, 2])
        let solve2 = Problem94().test(TreeNode.nodeFromArray([]))
        XCTAssertEqual(solve2, [])
        let solve3 = Problem94().test(TreeNode.nodeFromArray([1]))
        XCTAssertEqual(solve3, [1])
    }

    func test_Problem98() throws {
        XCTAssertTrue(Problem98().test(TreeNode.nodeFromArray([2, 1, 3])))

        XCTAssertFalse(Problem98().test(TreeNode.nodeFromArray([5, 1, 4, nil, nil, 3, 6])))
    }

}
