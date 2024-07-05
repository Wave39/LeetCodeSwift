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

    func test_Problem1137() throws {
        XCTAssertEqual(Problem1137().test(4), 4)
        XCTAssertEqual(Problem1137().test(25), 1_389_537)
    }

    func test_Problem1148() throws {
        XCTAssertTrue(Problem1148().test())
    }

    func test_Problem1160() throws {
        XCTAssertEqual(Problem1160().test(["cat", "bt", "hat", "tree"], "atach"), 6)
        XCTAssertEqual(Problem1160().test(["hello", "world", "leetcode"], "welldonehoneyr"), 10)
    }

    func test_Problem1193() throws {
        XCTAssertTrue(Problem1193().test())
    }

}
