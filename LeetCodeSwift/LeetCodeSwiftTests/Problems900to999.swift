//
//  Problems900to999.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 8/31/22.
//

import XCTest

class Problems900to999: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem942() throws {
        XCTAssertEqual(Problem942().test("IDID"), [0, 4, 1, 3, 2])
        XCTAssertEqual(Problem942().test("III"), [0, 1, 2, 3])
        XCTAssertEqual(Problem942().test("DDI"), [3, 2, 0, 1])
    }

}
