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

    func test_Problem1266() throws {
        XCTAssertEqual(Problem1266().test([[1, 1], [3, 4], [-1, 0]]), 7)
        XCTAssertEqual(Problem1266().test([[3, 2], [-2, 2]]), 5)
    }

    func test_Problem1287() throws {
        XCTAssertEqual(Problem1287().test([1, 2, 2, 6, 6, 6, 6, 7, 10]), 6)
        XCTAssertEqual(Problem1287().test([1, 1]), 1)
        XCTAssertEqual(Problem1287().test([1]), 1)
    }

}
