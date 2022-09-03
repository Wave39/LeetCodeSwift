//
//  Problems200to299.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 8/23/22.
//

import XCTest

class Problems200to299: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem200() throws {
        let test1 = [
            ["1","1","1","1","0"],
            ["1","1","0","1","0"],
            ["1","1","0","0","0"],
            ["0","0","0","0","0"]
        ]
        let test1c = test1.map { $0.map { Character($0) } }
        XCTAssertEqual(Problem200().test(test1c), 1)

        let test2 = [
            ["1","1","0","0","0"],
            ["1","1","0","0","0"],
            ["0","0","1","0","0"],
            ["0","0","0","1","1"]
        ]
        let test2c = test2.map { $0.map { Character($0) } }
        XCTAssertEqual(Problem200().test(test2c), 3)
    }

    func test_Problem205() throws {
        XCTAssertTrue(Problem205().test("egg", "add"))
        XCTAssertTrue(Problem205().test("paper", "title"))

        XCTAssertFalse(Problem205().test("foo", "bar"))
    }
    
    func test_Problem234() throws {
        let solve1 = Problem234().test(ListNode.arrayToList([1, 2, 2, 1]))
        XCTAssertTrue(solve1)

        let solve2 = Problem234().test(ListNode.arrayToList([1, 2]))
        XCTAssertFalse(solve2)
    }

    func test_Problem274() throws {
        let solve1 = Problem274().test([0, 1, 0])
        XCTAssertEqual(solve1, 1)

        let solve2 = Problem274().test([3, 0, 1, 2, 5, 6])
        XCTAssertEqual(solve2, 3)
    }
}
