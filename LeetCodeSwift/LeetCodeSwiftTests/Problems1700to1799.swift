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

    func test_Problem1770() throws {
        XCTAssertEqual(Problem1770().test([1, 2, 3], [3, 2, 1]), 14)
        XCTAssertEqual(Problem1770().test([-5, -3, -3, -2, 7, 1], [-10, -5, 3, 4, 6]), 102)
    }

}
