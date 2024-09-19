//
//  Problems1900to1999.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 9/11/22.
//

import XCTest

class Problems1900to1999: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem1903() throws {
        XCTAssertEqual(Problem1903().test("52"), "5")
        XCTAssertEqual(Problem1903().test("4206"), "")
        XCTAssertEqual(Problem1903().test("35427"), "35427")
    }

    func test_Problem1907() throws {
        XCTAssertTrue(Problem1907().test())
    }

    func test_Problem1915() throws {
        XCTAssertEqual(Problem1915().test("aba"), 4)
        XCTAssertEqual(Problem1915().test("aabb"), 9)
        XCTAssertEqual(Problem1915().test("he"), 2)
    }

    func test_Problem1921() throws {
        XCTAssertEqual(Problem1921().test([1,3,4], [1,1,1]), 3)
        XCTAssertEqual(Problem1921().test([1,1,2,3], [1,1,1,1]), 1)
        XCTAssertEqual(Problem1921().test([3,2,4], [5,3,2]), 1)
    }

    func test_Problem1930() throws {
        XCTAssertEqual(Problem1930().test("aabca"), 3)
        XCTAssertEqual(Problem1930().test("adc"), 0)
        XCTAssertEqual(Problem1930().test("bbcbaba"), 4)
    }

    func test_Problem1934() throws {
        XCTAssertTrue(Problem1934().test())
    }

    func test_Problem1945() throws {
        XCTAssertEqual(Problem1945().test("iiii", 1), 36)
        XCTAssertEqual(Problem1945().test("leetcode", 2), 6)
        XCTAssertEqual(Problem1945().test("zbax", 2), 8)
    }

    func test_Problem1980() throws {
        XCTAssertEqual(Problem1980().test(["01", "10"]), "00")
        XCTAssertEqual(Problem1980().test(["00", "01"]), "10")
        XCTAssertEqual(Problem1980().test(["111", "011", "001"]), "000")
    }
    
    func test_Problem1996() throws {
        XCTAssertEqual(Problem1996().test([[5, 5], [6, 3], [3, 6]]), 0)
        XCTAssertEqual(Problem1996().test([[2, 2], [3, 3]]), 1)
        XCTAssertEqual(Problem1996().test([[1, 5], [10, 4], [4, 3]]), 1)
    }

}
