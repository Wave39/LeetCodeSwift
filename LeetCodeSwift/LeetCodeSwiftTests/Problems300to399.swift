//
//  Problems300to399.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 8/23/22.
//

import XCTest

class Problems300to399: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem300() throws {
        XCTAssertEqual(Problem300().test([10, 9, 2, 5, 3, 7, 101, 18]), 4)
        XCTAssertEqual(Problem300().test([0, 1, 0, 3, 2, 3]), 4)
        XCTAssertEqual(Problem300().test([7, 7, 7, 7, 7, 7, 7]), 1)
        XCTAssertEqual(Problem300().test(Problem300().longTestData), 2500)
    }

    func test_Problem304() throws {
        let matrix = [
            [3, 0, 1, 4, 2],
            [5, 6, 3, 2, 1],
            [1, 2, 0, 1, 5],
            [4, 1, 0, 1, 7],
            [1, 0, 3, 0, 5]
        ]

        let solve1 = Problem304().test(matrix, 2, 1, 4, 3)
        XCTAssertEqual(solve1, 8)

        let solve2 = Problem304().test(matrix, 1, 1, 2, 2)
        XCTAssertEqual(solve2, 11)

        let solve3 = Problem304().test(matrix, 1, 2, 2, 4)
        XCTAssertEqual(solve3, 12)
    }

    func test_Problem319() throws {
        XCTAssertEqual(Problem319().test(3), 1)
        XCTAssertEqual(Problem319().test(99999999), 9999)
    }

    func test_Problem326() throws {
        XCTAssertTrue(Problem326().test(27))
        XCTAssertTrue(Problem326().test(9))

        XCTAssertFalse(Problem326().test(0))
    }

    func test_Problem332() throws {
        let solve1 = Problem332().test([["MUC", "LHR"], ["JFK", "MUC"], ["SFO", "SJC"], ["LHR", "SFO"]])
        XCTAssertEqual(solve1, ["JFK", "MUC", "LHR", "SFO", "SJC"])
        let solve2 = Problem332().test([["JFK", "SFO"], ["JFK", "ATL"], ["SFO", "ATL"], ["ATL", "JFK"], ["ATL", "SFO"]])
        XCTAssertEqual(solve2, ["JFK", "ATL", "JFK", "SFO", "ATL", "SFO"])
    }

    func test_Problem334() throws {
        XCTAssertTrue(Problem334().test([1,2,3,4,5]))
        XCTAssertTrue(Problem334().test([2,1,5,0,4,6]))
        XCTAssertTrue(Problem334().test([2,5,3,4,5]))
        XCTAssertTrue(Problem334().test([1,2,3,1,2,1]))
        XCTAssertTrue(Problem334().test([1,2,-10,-8,-7]))
        XCTAssertTrue(Problem334().test(Problem334().longTestData1))

        XCTAssertFalse(Problem334().test([5,4,3,2,1]))
        XCTAssertFalse(Problem334().test([1,2,2,1]))
        XCTAssertFalse(Problem334().test(Problem334().longTestData2))
    }

    func test_Problem336() throws {
        let solve1 = Problem336().test(["abcd", "dcba", "lls", "s", "sssll"])
        XCTAssertEqual(solve1, [[0, 1], [1, 0], [2, 4], [3, 2]])
        let solve2 = Problem336().test(["bat", "tab", "cat"])
        XCTAssertEqual(solve2, [[0, 1], [1, 0]])
        let solve3 = Problem336().test(["a", ""])
        XCTAssertEqual(solve3, [[0, 1], [1, 0]])
    }

    func test_Problem338() throws {
        XCTAssertEqual(Problem338().test(2), [0, 1, 1])
        XCTAssertEqual(Problem338().test(5), [0, 1, 1, 2, 1, 2])
    }

    func test_Problem342() throws {
        XCTAssertTrue(Problem342().test(16))
        XCTAssertTrue(Problem342().test(1))

        XCTAssertFalse(Problem342().test(5))
    }

    func test_Problem343() throws {
        XCTAssertEqual(Problem343().test(2), 1)
        XCTAssertEqual(Problem343().test(10), 36)
        XCTAssertEqual(Problem343().test(3), 2)
    }

    func test_Problem350() throws {
        XCTAssertEqual(Problem350().test([1, 2, 2, 1], [2, 2]), [2, 2])
        XCTAssertEqual(Problem350().test([4, 9, 5], [9, 4, 9, 8, 4]), [4, 9])
    }

    func test_Problem363() throws {
        XCTAssertEqual(Problem363().test([[1, 0, 1],[0, -2, 3]], 2), 2)
        XCTAssertEqual(Problem363().test([[2, 2, -1]], 3), 3)
        XCTAssertEqual(Problem363().test([[2,2,-1]], 0), -1)
        XCTAssertEqual(Problem363().test(Problem363().testData1, -321), -323)
    }
    
    func test_Problem383() throws {
        XCTAssertTrue(Problem383().test("aa", "aab"))

        XCTAssertFalse(Problem383().test("a", "b"))
        XCTAssertFalse(Problem383().test("aa", "ab"))
    }

    func test_Problem387() throws {
        XCTAssertEqual(Problem387().test("leetcode"), 0)
        XCTAssertEqual(Problem387().test("loveleetcode"), 2)
        XCTAssertEqual(Problem387().test("aabb"), -1)
    }

    func test_Problem392() throws {
        XCTAssertTrue(Problem392().test("abc", "ahbgdc"))

        XCTAssertFalse(Problem392().test("axc", "ahbgdc"))
    }

    func test_Problem393() throws {
        XCTAssertTrue(Problem393().test([197, 130, 1]))

        XCTAssertFalse(Problem393().test([235, 140, 4]))
    }

}
