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

    func test_Problem1584() throws {
        XCTAssertEqual(Problem1584().test([[0, 0], [2, 2], [3, 10], [5, 2], [7, 0]]), 20)
        XCTAssertEqual(Problem1584().test([[3, 12], [-2, 5], [-4, 1]]), 18)
    }

}
