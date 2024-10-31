//
//  Problems2400to2499.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 9/20/22.
//

import XCTest

final class Problems2400to2499: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem2413() throws {
        XCTAssertEqual(Problem2413().test(5), 10)
        XCTAssertEqual(Problem2413().test(6), 6)
    }

    func test_Problem2416() throws {
        XCTAssertEqual(Problem2416().test(["abc", "ab", "bc", "b"]), [5, 4, 3, 2])
        XCTAssertEqual(Problem2416().test(["abcd"]), [4])
    }

    func test_Problem2423() throws {
        // true
        XCTAssertTrue(Problem2423().test("abcc"))
        XCTAssertTrue(Problem2423().test("bac"))
        XCTAssertTrue(Problem2423().test("abbcc"))

        // false
        XCTAssertFalse(Problem2423().test("aazz"))
    }

    func test_Problem2441() throws {
        XCTAssertEqual(Problem2441().test([-1, 2, -3, 3]), 3)
        XCTAssertEqual(Problem2441().test([-1, 10, 6, 7, -7, 1]), 7)
        XCTAssertEqual(Problem2441().test([-10, 8, 6, 7, -2, -3]), -1)
    }

    func test_Problem2463() throws {
        XCTAssertEqual(Problem2463().test([0, 4, 6], [[2, 2], [6, 2]]), 4)
        XCTAssertEqual(Problem2463().test([1, -1], [[-2, 1], [2, 1]]), 2)
    }

    func test_Problem2491() throws {
        XCTAssertEqual(Problem2491().test([3, 2, 5, 1, 3, 4]), 22)
        XCTAssertEqual(Problem2491().test([3, 4]), 12)
        XCTAssertEqual(Problem2491().test([1, 1, 2, 3]), -1)
    }

}
