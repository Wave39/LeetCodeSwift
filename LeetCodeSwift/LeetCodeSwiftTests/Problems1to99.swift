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
        let problem1 = Problem1()

        let solve1 = problem1.test([2, 7, 11, 15], 9)
        XCTAssertEqual(solve1, [0, 1])

        let solve2 = problem1.test([3, 2, 4], 6)
        XCTAssertEqual(solve2, [1, 2])
    }

    func test_Problem2() throws {
        let problem2 = Problem2()

        let solve1a = ListNode.arrayToList([2, 4, 3])
        let solve1b = ListNode.arrayToList([5, 6, 4])
        let solve1 = problem2.test(solve1a, solve1b)
        XCTAssertEqual(solve1?.toArray(), [7,0,8])

        let solve2a = ListNode.arrayToList([0])
        let solve2b = ListNode.arrayToList([0])
        let solve2 = problem2.test(solve2a, solve2b)
        XCTAssertEqual(solve2?.toArray(), [0])

        let solve3a = ListNode.arrayToList([9, 9, 9, 9, 9, 9, 9])
        let solve3b = ListNode.arrayToList([9, 9, 9, 9])
        let solve3 = problem2.test(solve3a, solve3b)
        XCTAssertEqual(solve3?.toArray(), [8,9,9,9,0,0,0,1])
    }

    func test_Problem26() throws {
        let problem26 = Problem26()

        var testArray = [1,1,2]
        let n1 = problem26.test(&testArray)
        XCTAssertEqual(n1, 2)
        XCTAssertEqual(testArray[...1], [1, 2])

        testArray = [0,0,1,1,1,2,2,3,3,4]
        let n2 = problem26.test(&testArray)
        XCTAssertEqual(n2, 5)
        XCTAssertEqual(testArray[...4], [0, 1, 2, 3, 4])
    }
}
