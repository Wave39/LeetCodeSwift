//
//  Problems200to299.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 8/23/22.
//

import XCTest

class Problems200to299: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem274() throws {
        let problem274 = Problem274()

        let solve1 = problem274.test([0, 1, 0])
        XCTAssertEqual(solve1, 1)

        let solve2 = problem274.test([3, 0, 1, 2, 5, 6])
        XCTAssertEqual(solve2, 3)
    }
}
