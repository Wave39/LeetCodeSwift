//
//  Problems2700to2799.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 7/31/23.
//

import XCTest

final class Problems2700to2799: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem2785() throws {
        XCTAssertEqual(Problem2785().test("lEetcOde"), "lEOtcede")
        XCTAssertEqual(Problem2785().test("lYmpH"), "lYmpH")
    }
    
    func test_Problem2788() throws {
        XCTAssertEqual(Problem2788().test(["one.two.three", "four.five", "six"], "."), ["one", "two", "three", "four", "five", "six"])
        XCTAssertEqual(Problem2788().test(["$easy$", "$problem$"], "$"), ["easy", "problem"])
        XCTAssertEqual(Problem2788().test(["|||"], "|"), [])
    }

    func test_Problem2798() throws {
        XCTAssertEqual(Problem2798().test([0, 1, 2, 3, 4], 2), 3)
        XCTAssertEqual(Problem2798().test([5, 1, 4, 2, 2], 6), 0)
    }

}
