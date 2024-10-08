//
//  Problems400to499.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 8/23/22.
//

import XCTest

class Problems400to499: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem400() throws {
        XCTAssertEqual(Problem400().test(3), 3)
        XCTAssertEqual(Problem400().test(11), 0)
        XCTAssertEqual(Problem400().test(10), 1)
        XCTAssertEqual(Problem400().test(100), 5)
    }

    func test_Problem402() throws {
        XCTAssertEqual(Problem402().test("1432219", 3), "1219")
        XCTAssertEqual(Problem402().test("10200", 1), "200")
        XCTAssertEqual(Problem402().test("10", 2), "0")
        XCTAssertEqual(Problem402().test("10001", 4), "0")
    }

    func test_Problem409() throws {
        XCTAssertEqual(Problem409().test("abccccdd"), 7)
        XCTAssertEqual(Problem409().test("a"), 1)
        XCTAssertEqual(Problem409().test("ccc"), 3)
        XCTAssertEqual(Problem409().test("cccddd"), 5)
    }

    func test_Problem412() throws {
        XCTAssertEqual(Problem412().test(3), ["1", "2", "Fizz"])
        XCTAssertEqual(Problem412().test(5), ["1", "2", "Fizz", "4", "Buzz"])
        XCTAssertEqual(Problem412().test(15), ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"])
    }

    func test_Problem417() throws {
        XCTAssertEqual(Problem417().test([[1, 2, 2, 3, 5], [3, 2, 3, 4, 4], [2, 4, 5, 3, 1], [6, 7, 1, 4, 5], [5, 1, 1, 2, 4]]), [[0, 4], [1, 3], [1, 4], [2, 2], [3, 0], [3, 1], [4, 0]])
        XCTAssertEqual(Problem417().test([[1]]), [[0, 0]])
    }

    func test_Problem424() throws {
        XCTAssertEqual(Problem424().test("ABAB", 2), 4)
        XCTAssertEqual(Problem424().test("AABABBA", 1), 4)
        XCTAssertEqual(Problem424().test("ABBB", 2), 4)
        XCTAssertEqual(Problem424().test("ABAA", 0), 2)
        XCTAssertEqual(Problem424().test("ABCCCCC", 2), 7)
    }

    func test_Problem429() throws {
        let a5 = Node(5)
        let a6 = Node(6)
        let a3 = Node(3)
        a3.children = [ a5, a6 ]
        let a2 = Node(2)
        let a4 = Node(4)
        let aRoot = Node(1)
        aRoot.children = [ a3, a2, a4 ]
        let solve1 = Problem429().test(aRoot)
        XCTAssertEqual(solve1, [[1], [3, 2, 4], [5, 6]])

        let b14 = Node(14)
        let b11 = Node(11)
        b11.children = [ b14 ]
        let b12 = Node(12)
        let b13 = Node(13)
        let b6 = Node(6)
        let b7 = Node(7)
        b7.children = [ b11 ]
        let b8 = Node(8)
        b8.children = [ b12 ]
        let b9 = Node(9)
        b9.children = [ b13 ]
        let b10 = Node(10)
        let b2 = Node(2)
        let b3 = Node(3)
        b3.children = [ b6, b7 ]
        let b4 = Node(4)
        b4.children = [ b8 ]
        let b5 = Node(5)
        b5.children = [ b9, b10 ]
        let bRoot = Node(1)
        bRoot.children = [ b2, b3, b4, b5 ]
        let solve2 = Problem429().test(bRoot)
        XCTAssertEqual(solve2, [[1], [2, 3, 4, 5], [6, 7, 8, 9, 10], [11, 12, 13], [14]])

        let solve3 = Problem429().test(nil)
        XCTAssertEqual(solve3, [])
    }

    func test_Problem438() throws {
        XCTAssertEqual(Problem438().test("cbaebabacd", "abc"), [0, 6])
        XCTAssertEqual(Problem438().test("abab", "ab"), [0, 1, 2])
        XCTAssertEqual(Problem438().test("aaaaaaaaaa", "aaaaaaaaaaaaa"), [])
    }

    func test_Problem452() throws {
        XCTAssertEqual(Problem452().test([[10, 16], [2, 8], [1, 6], [7, 12]]), 2)
        XCTAssertEqual(Problem452().test([[1, 2], [3, 4], [5, 6], [7, 8]]), 4)
        XCTAssertEqual(Problem452().test([[1, 2], [2, 3], [3, 4], [4, 5]]), 2)
        XCTAssertEqual(Problem452().test([[1, 2], [4, 5], [1, 5]]), 2)
    }

    func test_Problem463() throws {
        XCTAssertEqual(Problem463().test([[0, 1, 0, 0], [1, 1, 1, 0], [0, 1, 0, 0], [1, 1, 0, 0]]), 16)
        XCTAssertEqual(Problem463().test([[1]]), 4)
        XCTAssertEqual(Problem463().test([[1, 0]]), 4)
    }

    func test_Problem476() throws {
        XCTAssertEqual(Problem476().test(5), 2)
        XCTAssertEqual(Problem476().test(1), 0)
        XCTAssertEqual(Problem476().test(7), 0)
        XCTAssertEqual(Problem476().test(10), 5)
    }

}
