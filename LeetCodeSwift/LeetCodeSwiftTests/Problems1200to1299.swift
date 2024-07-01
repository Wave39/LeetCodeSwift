//
//  Problems1200to1299.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 8/23/22.
//

import XCTest

class Problems1200to1299: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem1219() throws {
        XCTAssertEqual(Problem1219().test([[0, 6, 0], [5, 8, 7], [0, 9, 0]]), 24)
        XCTAssertEqual(Problem1219().test([[1, 0, 7], [2, 0, 6], [3, 4, 5],[0, 3, 0], [9, 0, 20]]), 28)
        XCTAssertEqual(Problem1219().test([[0, 0, 0], [0, 0, 0], [0, 0, 0]]), 0)
    }

    func test_Problem1251() throws {
        XCTAssertTrue(Problem1251().test())
    }

    func test_Problem1255() throws {
        XCTAssertEqual(Problem1255().test(
            ["dog", "cat", "dad", "good"],
            ["a", "a", "c", "d", "d", "d", "g", "o", "o"],
            [1, 0, 9, 5, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
        ), 23)
        XCTAssertEqual(Problem1255().test(
            ["xxxz", "ax", "bx", "cx"],
            ["z", "a", "b", "c", "x", "x", "x"],
            [4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 10]
        ), 27)
        XCTAssertEqual(Problem1255().test(
            ["leetcode"],
            ["l", "e", "t", "c", "o", "d"],
            [0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0]
        ), 0)
    }

    func test_Problem1266() throws {
        XCTAssertEqual(Problem1266().test([[1, 1], [3, 4], [-1, 0]]), 7)
        XCTAssertEqual(Problem1266().test([[3, 2], [-2, 2]]), 5)
    }

    func test_Problem1280() throws {
        XCTAssertTrue(Problem1280().test())
    }

    func test_Problem1287() throws {
        XCTAssertEqual(Problem1287().test([1, 2, 2, 6, 6, 6, 6, 7, 10]), 6)
        XCTAssertEqual(Problem1287().test([1, 1]), 1)
        XCTAssertEqual(Problem1287().test([1]), 1)
    }

    func test_Problem1289() throws {
        XCTAssertEqual(Problem1289().test([[1,2,3],[4,5,6],[7,8,9]]), 13)
        XCTAssertEqual(Problem1289().test([[7]]), 7)
    }

}
