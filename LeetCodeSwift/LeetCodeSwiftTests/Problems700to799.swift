//
//  Problems700to799.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 8/25/22.
//

import XCTest

class Problems700to799: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem747() throws {
        XCTAssertEqual(Problem747().test([3, 6, 1, 0]), 1)
        XCTAssertEqual(Problem747().test([1, 2, 3, 4]), -1)
        XCTAssertEqual(Problem747().test([0, 0, 0, 1]), 3)
    }

}