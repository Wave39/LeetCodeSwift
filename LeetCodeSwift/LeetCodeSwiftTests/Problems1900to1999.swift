//
//  Problems1900to1999.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 9/11/22.
//

import XCTest

class Problems1900to1999: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem1921() throws {
        XCTAssertEqual(Problem1921().test([1,3,4], [1,1,1]), 3)
        XCTAssertEqual(Problem1921().test([1,1,2,3], [1,1,1,1]), 1)
        XCTAssertEqual(Problem1921().test([3,2,4], [5,3,2]), 1)
    }

    func test_Problem1930() throws {
        XCTAssertEqual(Problem1930().test("aabca"), 3)
        XCTAssertEqual(Problem1930().test("adc"), 0)
        XCTAssertEqual(Problem1930().test("bbcbaba"), 4)

    }

    func test_Problem1996() throws {
        XCTAssertEqual(Problem1996().test([[5, 5], [6, 3], [3, 6]]), 0)
        XCTAssertEqual(Problem1996().test([[2, 2], [3, 3]]), 1)
        XCTAssertEqual(Problem1996().test([[1, 5], [10, 4], [4, 3]]), 1)
    }

}
