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

    func test_Problem26() throws {
        var testArray = [1,1,2]
        let n1 = Problem26().test(&testArray)
        XCTAssertEqual(n1, 2)
        XCTAssertEqual(testArray[...1], [1, 2])

        testArray = [0,0,1,1,1,2,2,3,3,4]
        let n2 = Problem26().test(&testArray)
        XCTAssertEqual(n2, 5)
        XCTAssertEqual(testArray[...4], [0, 1, 2, 3, 4])
    }
}
