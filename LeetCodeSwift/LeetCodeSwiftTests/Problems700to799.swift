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

    func test_Problem704() throws {
        XCTAssertEqual(Problem704().test([-1, 0, 3, 5, 9, 12], 9), 4)
        XCTAssertEqual(Problem704().test([-1, 0, 3, 5, 9, 12], 2), -1)
        XCTAssertEqual(Problem704().test([2, 5], 0), -1)
        XCTAssertEqual(Problem704().test([2, 5], 9), -1)
        XCTAssertEqual(Problem704().test([5], 5), 0)
        XCTAssertEqual(Problem704().test([2, 5], 5), 1)

    }
    
    func test_Problem724() throws {
        XCTAssertEqual(Problem724().test([1, 7, 3, 6, 5, 6]), 3)
        XCTAssertEqual(Problem724().test([1, 2, 3]), -1)
        XCTAssertEqual(Problem724().test([2, 1, -1]), 0)
        XCTAssertEqual(Problem724().test([-1, -1, -1, 1, 1, 1]), -1)
    }

    func test_Problem747() throws {
        XCTAssertEqual(Problem747().test([3, 6, 1, 0]), 1)
        XCTAssertEqual(Problem747().test([1, 2, 3, 4]), -1)
        XCTAssertEqual(Problem747().test([0, 0, 0, 1]), 3)
    }

}
