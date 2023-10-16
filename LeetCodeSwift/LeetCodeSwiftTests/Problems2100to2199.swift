//
//  Problems2100to2199.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 10/16/23.
//

import XCTest

final class Problems2100to2199: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem2171() throws {
        XCTAssertEqual(Problem2171().test([4, 1, 6, 5]), 4)
        XCTAssertEqual(Problem2171().test([2, 10, 3, 2]), 7)
    }

}
