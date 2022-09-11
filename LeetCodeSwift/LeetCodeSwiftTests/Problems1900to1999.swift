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

    func test_Problem1996() throws {
        XCTAssertEqual(Problem1996().test([[5, 5], [6, 3], [3, 6]]), 0)
        XCTAssertEqual(Problem1996().test([[2, 2], [3, 3]]), 1)
        XCTAssertEqual(Problem1996().test([[1, 5], [10, 4], [4, 3]]), 1)
    }

}
