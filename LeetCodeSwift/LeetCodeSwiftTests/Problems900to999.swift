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

    func test_Problem967() throws {
        XCTAssertEqual(Problem967().test(3, 7), [181, 292, 707, 818, 929])
        XCTAssertEqual(Problem967().test(2, 1), [10, 12, 21, 23, 32, 34, 43, 45, 54, 56, 65, 67, 76, 78, 87, 89, 98])
        XCTAssertEqual(Problem967().test(3, 0), [111, 222, 333, 444, 555, 666, 777, 888, 999])
        XCTAssertEqual(Problem967().test(3, 9), [909])
    }
    
}
