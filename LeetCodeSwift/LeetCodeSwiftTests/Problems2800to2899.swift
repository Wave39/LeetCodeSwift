//
//  Problems2800to2899.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 11/8/23.
//

import XCTest

final class Problems2800to2899: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem2849() throws {
        XCTAssertTrue(Problem2849().test(2, 4, 7, 7, 6))
        XCTAssertTrue(Problem2849().test(1, 1, 1, 3, 2))
        XCTAssertTrue(Problem2849().test(1, 1, 1, 1, 3))

        XCTAssertFalse(Problem2849().test(3, 1, 7, 3, 3))
        XCTAssertFalse(Problem2849().test(1, 3, 1, 3, 1))
    }

}
