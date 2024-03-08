//
//  Problems3000to3099.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 3/1/24.
//

import XCTest

final class Problems3000to3099: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem3000() throws {
        XCTAssertEqual(Problem3000().test([[9, 3], [8, 6]]), 48)
        XCTAssertEqual(Problem3000().test([[3, 4], [4, 3]]), 12)
        XCTAssertEqual(Problem3000().test([
            [4, 7], [8, 9], [5, 3], [6, 10], [2, 9],
            [3, 10], [2, 2], [5, 8], [5, 10], [5, 6],
            [8, 9], [10, 7], [8, 9], [3, 7], [2, 6],
            [5, 1], [7, 4], [1, 10], [1, 7], [6, 9],
            [3, 3], [4, 6], [8, 2], [10, 6], [7, 9],
            [9, 2], [1, 2], [3, 8], [10, 2], [4, 1],
            [9, 7], [10, 3], [6, 9], [9, 8], [7, 7],
            [5, 7], [5, 4], [6, 5], [1, 8], [2, 3],
            [7, 10], [3, 9], [5, 7], [2, 4], [5, 6],
            [9, 5], [8, 8], [8, 10], [6, 8], [5, 1],
            [10, 8], [7, 4], [2, 1], [2, 7], [10, 3],
            [2, 5], [7, 6], [10, 5], [10, 9], [5, 7],
            [10, 6], [4, 3], [10, 4], [1, 5], [8, 9],
            [3, 1], [2, 5], [9, 10], [6, 6], [5, 10],
            [10, 2], [6, 10], [1, 1], [8, 6], [1, 7],
            [6, 3], [9, 3], [1, 4], [1, 1], [10, 4],
            [7, 9], [4, 5], [2, 8], [7, 9], [7, 3],
            [4, 9], [2, 8], [4, 6], [9, 1], [8, 4],
            [2, 4], [7, 8], [3, 5], [7, 6], [8, 6],
            [4, 7], [25, 60], [39, 52], [16, 63], [33, 56]
        ]), 2028)
    }

    func test_Problem3005() throws {
        XCTAssertEqual(Problem3005().test([1, 2, 2, 3, 1, 4]), 4)
        XCTAssertEqual(Problem3005().test([1, 2, 3, 4, 5]), 5)
    }

}
