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

    func test_Problem509() throws {
        XCTAssertEqual(Problem509().test(0), 0)
        XCTAssertEqual(Problem509().test(1), 1)
        XCTAssertEqual(Problem509().test(2), 1)
        XCTAssertEqual(Problem509().test(3), 2)
        XCTAssertEqual(Problem509().test(4), 3)
        XCTAssertEqual(Problem509().test(5), 5)
        XCTAssertEqual(Problem509().test(6), 8)
    }

    func test_Problem515() throws {
        let root1 = TreeNode([1, 3, 2, 5, 3, nil, 9])
        let solve1 = Problem515().test(root1)
        XCTAssertEqual(solve1, [1, 3, 9])
        let root2 = TreeNode([1, 2, 3])
        let solve2 = Problem515().test(root2)
        XCTAssertEqual(solve2, [1, 3])
    }

    func test_Problem518() throws {
        XCTAssertEqual(Problem518().test(5, [1, 2, 5]), 4)
        XCTAssertEqual(Problem518().test(3, [2]), 0)
        XCTAssertEqual(Problem518().test(10, [10]), 1)
    }

    func test_Problem557() throws {
        XCTAssertEqual(Problem557().test("Let's take LeetCode contest"), "s'teL ekat edoCteeL tsetnoc")
        XCTAssertEqual(Problem557().test("God Ding"), "doG gniD")
    }

    func test_Problem566() throws {
        let solve1 = Problem566().test([[1, 2], [3, 4]], 1, 4)
        XCTAssertEqual(solve1, [[1, 2, 3, 4]])
        let solve2 = Problem566().test([[1, 2], [3, 4]], 2, 4)
        XCTAssertEqual(solve2, [[1, 2], [3, 4]])
    }

    func test_Problem589() throws {
        let a5 = Node(5)
        let a6 = Node(6)
        let a3 = Node(3)
        a3.children = [ a5, a6 ]
        let a2 = Node(2)
        let a4 = Node(4)
        let a1 = Node(1)
        a1.children = [ a3, a2, a4 ]
        let solve1 = Problem589().test(a1)
        XCTAssertEqual(solve1, [1, 3, 5, 6, 2, 4])

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
        let b1 = Node(1)
        b1.children = [ b2, b3, b4, b5 ]
        let solve2 = Problem589().test(b1)
        XCTAssertEqual(solve2, [1, 2, 3, 6, 7, 11, 14, 4, 8, 12, 5, 9, 13, 10])
    }

    func test_Problem595() throws {
        // SQL problem
        XCTAssertTrue(true)
    }
}
