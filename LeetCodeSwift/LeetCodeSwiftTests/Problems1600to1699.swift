//
//  Problems1600to1699.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 9/22/22.
//

import XCTest

final class Problems1600to1699: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem1680() throws {
        XCTAssertEqual(Problem1680().test(1), 1)
        XCTAssertEqual(Problem1680().test(3), 27)
        XCTAssertEqual(Problem1680().test(12), 505379714)
    }

}
