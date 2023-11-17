//
//  Problems1800to1899.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 11/6/23.
//

import XCTest

final class Problems1800to1899: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem1845() throws {
        let commands1 = ["SeatManager", "reserve", "reserve", "unreserve", "reserve", "reserve", "reserve", "reserve", "unreserve"]
        let options1 = [[5], [], [], [2], [], [], [], [], [5]]
        let solve1 = Problem1845().test(commands1, options1)
        XCTAssertEqual(solve1, [nil, 1, 2, nil, 2, 3, 4, 5, nil])
    }

    func test_Problem1846() throws {
        XCTAssertEqual(Problem1846().test([2, 2, 1, 2, 1]), 2)
        XCTAssertEqual(Problem1846().test([100, 1, 1000]), 3)
        XCTAssertEqual(Problem1846().test([1, 2, 3, 4, 5]), 5)
    }

    func test_Problem1877() throws {
        XCTAssertEqual(Problem1877().test([3, 5, 2, 3]), 7)
        XCTAssertEqual(Problem1877().test([3, 5, 4, 2, 4, 6]), 8)
        XCTAssertEqual(Problem1877().test([4, 1, 5, 1, 2, 5, 1, 5, 5, 4]), 8)
    }
    
}
