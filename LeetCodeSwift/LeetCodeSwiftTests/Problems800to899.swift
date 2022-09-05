//
//  Problems800to899.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 8/26/22.
//

import XCTest

class Problems800to899: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem869() throws {
        XCTAssertTrue(Problem869().test(1))
        XCTAssertTrue(Problem869().test(2410))

        XCTAssertFalse(Problem869().test(10))
        XCTAssertFalse(Problem869().test(2411))
    }

    func test_Problem876() throws {
        let solve1 = Problem876().test(ListNode.arrayToList([1, 2, 3, 4, 5]))
        XCTAssertEqual(solve1!.toArray(), [3, 4, 5])
        let solve2 = Problem876().test(ListNode.arrayToList([1, 2, 3, 4, 5, 6]))
        XCTAssertEqual(solve2!.toArray(), [4, 5, 6])
    }
    
}
