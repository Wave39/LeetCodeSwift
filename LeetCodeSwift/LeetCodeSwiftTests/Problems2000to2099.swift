//
//  Problems2000to2099.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 9/15/22.
//

import XCTest

final class Problems2000to2099: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem2007() throws {
        XCTAssertEqual(Problem2007().test([1, 3, 4, 2, 6, 8]), [1, 3, 4])
        XCTAssertEqual(Problem2007().test([6, 3, 0, 1]), [])
        XCTAssertEqual(Problem2007().test([1]), [])
        XCTAssertEqual(Problem2007().test([1, 0, 0, 2, 0, 0]), [0, 0, 1])
    }

}
