//
//  Problems400to499.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 8/23/22.
//

import XCTest

class Problems400to499: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem476() throws {
        XCTAssertEqual(Problem476().test(5), 2)
        XCTAssertEqual(Problem476().test(1), 0)
    }

}