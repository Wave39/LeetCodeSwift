//
//  Problems1500to1599.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 9/15/23.
//

import XCTest

class Problems1500to1599: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem1509() throws {
        XCTAssertEqual(Problem1509().test([5, 3, 2, 4]), 0)
        XCTAssertEqual(Problem1509().test([1, 5, 0, 10, 14]), 1)
        XCTAssertEqual(Problem1509().test([3, 100, 20]), 0)
        XCTAssertEqual(Problem1509().test([6, 6, 0, 1, 1, 4, 6]), 2)
    }

    func test_Problem1544() throws {
        XCTAssertEqual(Problem1544().test("leEeetcode"), "leetcode")
        XCTAssertEqual(Problem1544().test("abBAcC"), "")
        XCTAssertEqual(Problem1544().test("s"), "s")
    }

    func test_Problem1550() throws {
        XCTAssertTrue(Problem1550().test([1, 2, 34, 3, 4, 5, 7, 23, 12]))

        XCTAssertFalse(Problem1550().test([2, 6, 4, 1]))
    }

    func test_Problem1574() throws {
        XCTAssertEqual(Problem1574().test([1, 2, 3, 10, 4, 2, 3, 5]), 3)
        XCTAssertEqual(Problem1574().test([5, 4, 3, 2, 1]), 4)
        XCTAssertEqual(Problem1574().test([1, 2, 3]), 0)
    }

    func test_Problem1579() throws {
        XCTAssertEqual(Problem1579().test(4, [[3, 1, 2], [3, 2, 3], [1, 1, 3], [1, 2, 4], [1, 1, 2], [2, 3, 4]]), 2)
        XCTAssertEqual(Problem1579().test(4, [[3, 1, 2], [3, 2, 3], [1, 1, 4], [2, 1, 4]]), 0)
        XCTAssertEqual(Problem1579().test(4, [[3, 2, 3], [1, 1, 2], [2, 3, 4]]), -1)
    }

    func test_Problem1581() throws {
        XCTAssertTrue(Problem1581().test())
    }

    func test_Problem1582() throws {
        XCTAssertEqual(Problem1582().test([[1, 0, 0], [0, 0, 1], [1, 0, 0]]), 1)
        XCTAssertEqual(Problem1582().test([[1, 0, 0], [0, 1, 0], [0, 0, 1]]), 3)
    }

    func test_Problem1584() throws {
        XCTAssertEqual(Problem1584().test([[0, 0], [2, 2], [3, 10], [5, 2], [7, 0]]), 20)
        XCTAssertEqual(Problem1584().test([[3, 12], [-2, 5], [-4, 1]]), 18)
    }

    func test_Problem1593() throws {
        XCTAssertEqual(Problem1593().test("ababccc"), 5)
        XCTAssertEqual(Problem1593().test("aba"), 2)
        XCTAssertEqual(Problem1593().test("aa"), 1)
    }

    func test_Problem1598() throws {
        XCTAssertEqual(Problem1598().test(["d1/","d2/","../","d21/","./"]), 2)
        XCTAssertEqual(Problem1598().test(["d1/","d2/","./","d3/","../","d31/"]), 3)
        XCTAssertEqual(Problem1598().test(["d1/","../","../","../"]), 0)
    }

}
