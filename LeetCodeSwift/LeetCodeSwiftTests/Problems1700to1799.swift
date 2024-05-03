//
//  Problems1700to1799.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 9/16/22.
//

import XCTest

final class Problems1700to1799: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem1716() throws {
        XCTAssertEqual(Problem1716().test(4), 10)
        XCTAssertEqual(Problem1716().test(10), 37)
        XCTAssertEqual(Problem1716().test(20), 96)
    }
    
    func test_Problem1743() throws {
        let solve1 = Problem1743().test([[2, 1], [3, 4], [3, 2]])
        XCTAssert(solve1 == [1, 2, 3, 4] || solve1 == [4, 3, 2, 1])
        let solve2 = Problem1743().test([[4, -2], [1, 4], [-3, 1]])
        XCTAssert(solve2 == [-2, 4, 1, -3] || solve2 == [-3, 1, 4, -2])
        let solve3 = Problem1743().test([[100000, -100000]])
        XCTAssert(solve3 == [100000, -100000] || solve3 == [-100000, 100000])
    }
    
    func test_Problem1750() throws {
        XCTAssertEqual(Problem1750().test("ca"), 2)
        XCTAssertEqual(Problem1750().test("cabaabac"), 0)
        XCTAssertEqual(Problem1750().test("aabccabba"), 3)
    }

    func test_Problem1757() throws {
        XCTAssertTrue(Problem1757().test())
    }

    func test_Problem1759() throws {
        XCTAssertEqual(Problem1759().test("abbcccaa"), 13)
        XCTAssertEqual(Problem1759().test("xy"), 2)
        XCTAssertEqual(Problem1759().test("zzzzz"), 15)
    }

    func test_Problem1770() throws {
        XCTAssertEqual(Problem1770().test([1, 2, 3], [3, 2, 1]), 14)
        XCTAssertEqual(Problem1770().test([-5, -3, -3, -2, 7, 1], [-10, -5, 3, 4, 6]), 102)
    }

}
