//
//  Problems2400to2499.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 9/20/22.
//

import XCTest

final class Problems2400to2499: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem2413() throws {
        XCTAssertEqual(Problem2413().test(5), 10)
        XCTAssertEqual(Problem2413().test(6), 6)
    }

}
