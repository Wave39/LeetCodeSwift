//
//  Problems300to399.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 8/23/22.
//

import XCTest

class Problems300to399: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem304() throws {
        let problem304 = Problem304()

        let matrix = [
            [3, 0, 1, 4, 2],
            [5, 6, 3, 2, 1],
            [1, 2, 0, 1, 5],
            [4, 1, 0, 1, 7],
            [1, 0, 3, 0, 5]
        ]

        let solve1 = problem304.test(matrix, 2, 1, 4, 3)
        XCTAssertEqual(solve1, 8)

        let solve2 = problem304.test(matrix, 1, 1, 2, 2)
        XCTAssertEqual(solve2, 11)

        let solve3 = problem304.test(matrix, 1, 2, 2, 4)
        XCTAssertEqual(solve3, 12)
    }
}
