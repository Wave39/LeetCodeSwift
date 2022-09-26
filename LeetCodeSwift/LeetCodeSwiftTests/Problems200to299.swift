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

    func test_Problem203() throws {
        let list1 = ListNode.arrayToList([1, 2, 6, 3, 4, 5, 6])
        let solve1 = Problem203().test(list1, 6)
        XCTAssertEqual(solve1!.toArray(), [1, 2, 3, 4, 5])
        let solve2 = Problem203().test(nil, 1)
        XCTAssertNil(solve2)
        let list3 = ListNode.arrayToList([7, 7, 7, 7])
        let solve3 = Problem203().test(list3, 7)
        XCTAssertNil(solve3)
    }

    func test_Problem205() throws {
        XCTAssertTrue(Problem205().test("egg", "add"))
        XCTAssertTrue(Problem205().test("paper", "title"))

        XCTAssertFalse(Problem205().test("foo", "bar"))
    }

    func test_Problem206() throws {
        let solve1 = Problem206().test(ListNode.arrayToList([1, 2, 3, 4, 5]))
        XCTAssertEqual(solve1!.toArray(), [5, 4, 3, 2, 1])
        let solve2 = Problem206().test(ListNode.arrayToList([1, 2]))
        XCTAssertEqual(solve2!.toArray(), [2, 1])
        let solve3 = Problem206().test(nil)
        XCTAssertNil(solve3)
    }

    func test_Problem217() throws {
        XCTAssertTrue(Problem217().test([1, 2, 3, 1]))
        XCTAssertTrue(Problem217().test([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]))

        XCTAssertFalse(Problem217().test([1, 2, 3, 4]))
    }

    func test_Problem232() throws {
        let queue1 = Problem232.MyQueue()
        queue1.push(1)
        queue1.push(2)
        XCTAssertEqual(queue1.peek(), 1)
        XCTAssertEqual(queue1.pop(), 1)
        XCTAssertFalse(queue1.empty())
    }

    func test_Problem234() throws {
        let solve1 = Problem234().test(ListNode.arrayToList([1, 2, 2, 1]))
        XCTAssertTrue(solve1)

        let solve2 = Problem234().test(ListNode.arrayToList([1, 2]))
        XCTAssertFalse(solve2)
    }

    func test_Problem235() throws {
        let a3 = TreeNode(3)
        let a5 = TreeNode(5)
        let a0 = TreeNode(0)
        let a4 = TreeNode(4, a3, a5)
        let a7 = TreeNode(7)
        let a9 = TreeNode(9)
        let a2 = TreeNode(2, a0, a4)
        let a8 = TreeNode(8, a7, a9)
        let a6 = TreeNode(6, a2, a8)
        let solve1 = Problem235().test(a6, a2, a8)
        XCTAssertEqual(solve1!.val, 6)
        let solve2 = Problem235().test(a6, a2, a4)
        XCTAssertEqual(solve2!.val, 2)
    }

    func test_Problem242() throws {
        XCTAssertTrue(Problem242().test("anagram", "nagaram"))

        XCTAssertFalse(Problem242().test("rat", "car"))
    }

    func test_Problem274() throws {
        let solve1 = Problem274().test([0, 1, 0])
        XCTAssertEqual(solve1, 1)

        let solve2 = Problem274().test([3, 0, 1, 2, 5, 6])
        XCTAssertEqual(solve2, 3)
    }

    func test_Problem278() throws {
        Problem278.currentBadVersion = 4
        XCTAssertEqual(Problem278().test(5), 4)
        Problem278.currentBadVersion = 1
        XCTAssertEqual(Problem278().test(1), 1)
    }

}
