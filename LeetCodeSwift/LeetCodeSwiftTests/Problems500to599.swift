//
//  Problems500to599.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 9/2/22.
//

import XCTest

class Problems500to599: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem500() throws {
        let solve1 = Problem500().test(["Hello", "Alaska", "Dad", "Peace"])
        XCTAssertEqual(solve1, ["Alaska", "Dad"])
        let solve2 = Problem500().test(["omk"])
        XCTAssertEqual(solve2, [])
        let solve3 = Problem500().test(["adsdf","sfd"])
        XCTAssertEqual(solve3, ["adsdf", "sfd"])
    }

}
