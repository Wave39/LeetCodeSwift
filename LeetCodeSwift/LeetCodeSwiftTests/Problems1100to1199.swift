//
//  Problems1100to1199.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 11/2/23.
//

import XCTest

final class Problems1100to1199: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem1103() throws {
        XCTAssertEqual(Problem1103().test(7, 4), [1, 2, 3, 1])
        XCTAssertEqual(Problem1103().test(10, 3), [5, 2, 3])
    }

    func test_Problem1160() throws {
        XCTAssertEqual(Problem1160().test(["cat", "bt", "hat", "tree"], "atach"), 6)
        XCTAssertEqual(Problem1160().test(["hello", "world", "leetcode"], "welldonehoneyr"), 10)
    }

}
