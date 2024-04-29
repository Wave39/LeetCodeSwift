//
//  Problems2900to2999.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 3/1/24.
//

import XCTest

final class Problems2900to2999: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem2900() throws {
        XCTAssertEqual(Problem2900().test(["e", "a", "b"], [0, 0, 1]), ["e", "b"])
        XCTAssertEqual(Problem2900().test(["a", "b", "c", "d"], [1, 0, 1, 1]), ["a", "b", "c"])
    }

    func test_Problem2997() throws {
        XCTAssertEqual(Problem2997().test([2, 1, 3, 4], 1), 2)
        XCTAssertEqual(Problem2997().test([2, 0, 2, 0], 0), 0)
    }

}
