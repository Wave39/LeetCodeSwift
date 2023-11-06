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

}
