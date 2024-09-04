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

    func test_Problem801() throws {
        XCTAssertEqual(Problem801().test([1, 3, 5, 4], [1, 2, 3, 7]), 1)
        XCTAssertEqual(Problem801().test([0, 3, 5, 8, 9], [2, 1, 4, 6, 9]), 1)
    }
    
    func test_Problem814() throws {
        let solve1 = Problem814().test(TreeNode([1, nil, 0, 0, 1]))
        XCTAssertEqual(solve1!.val, 1)
        XCTAssertEqual(solve1!.nodeCount(), 3)
        let solve2 =  Problem814().test(TreeNode([1, 0, 1, 0, 0, 0, 1]))
        XCTAssertEqual(solve2!.val, 1)
        XCTAssertEqual(solve2!.nodeCount(), 3)
        let solve3 =  Problem814().test(TreeNode([1, 1, 0, 1, 1, 0, 1, 0]))
        XCTAssertEqual(solve3!.val, 1)
        XCTAssertEqual(solve3!.nodeCount(), 6)
        let solve4 =  Problem814().test(nil)
        XCTAssertNil(solve4)
    }

    func test_Problem838() throws {
        XCTAssertEqual(Problem838().test("RR.L"), "RR.L")
        XCTAssertEqual(Problem838().test(".L.R...LR..L.."), "LL.RR.LLRRLL..")
    }

    func test_Problem840() throws {
        XCTAssertEqual(Problem840().test([[4, 3, 8, 4], [9, 5, 1, 9], [2, 7, 6, 2]]), 1)
        XCTAssertEqual(Problem840().test([[8]]), 0)
        XCTAssertEqual(Problem840().test([[5, 5, 5], [5, 5, 5], [5, 5, 5]]), 0)
        XCTAssertEqual(Problem840().test([[10, 3, 5], [1, 6, 11], [7, 9, 2]]), 0)
        XCTAssertEqual(Problem840().test([[7, 0, 5], [2, 4, 6], [3, 8, 1]]), 0)
    }

    func test_Problem860() throws {
        XCTAssertTrue(Problem860().test([5, 5, 5, 10, 20]))
        XCTAssertTrue(Problem860().test([5, 5, 10, 20, 5, 5, 5, 5, 5, 5, 5, 5, 5, 10, 5, 5, 20, 5, 20, 5]))

        XCTAssertFalse(Problem860().test([5, 5, 10, 10, 20]))
    }

    func test_Problem861() throws {
        XCTAssertEqual(Problem861().test([[0, 0, 1, 1], [1, 0, 1, 0], [1, 1, 0, 0]]), 39)
        XCTAssertEqual(Problem861().test([[0]]), 1)
    }

    func test_Problem869() throws {
        XCTAssertTrue(Problem869().test(1))
        XCTAssertTrue(Problem869().test(2410))

        XCTAssertFalse(Problem869().test(10))
        XCTAssertFalse(Problem869().test(2411))
    }

    func test_Problem874() throws {
        XCTAssertEqual(Problem874().test([4, -1, 3], []), 25)
        XCTAssertEqual(Problem874().test([4, -1, 4, -2, 4], [[2, 4]]), 65)
        XCTAssertEqual(Problem874().test([6, -1, -1, 6], []), 36)
    }

    func test_Problem876() throws {
        let solve1 = Problem876().test(ListNode.arrayToList([1, 2, 3, 4, 5]))
        XCTAssertEqual(solve1!.toArray(), [3, 4, 5])
        let solve2 = Problem876().test(ListNode.arrayToList([1, 2, 3, 4, 5, 6]))
        XCTAssertEqual(solve2!.toArray(), [4, 5, 6])
    }
    
    func test_Problem885() throws {
        XCTAssertEqual(Problem885().test(1, 4, 0, 0), [[0, 0], [0, 1], [0, 2], [0, 3]])
        XCTAssertEqual(Problem885().test(5, 6, 1, 4), [[1, 4], [1, 5], [2, 5], [2, 4], [2, 3], [1, 3], [0, 3], [0, 4], [0, 5], [3, 5], [3, 4], [3, 3], [3, 2], [2, 2], [1, 2], [0, 2], [4, 5], [4, 4], [4, 3], [4, 2], [4, 1], [3, 1], [2, 1], [1, 1], [0, 1], [4, 0], [3, 0], [2, 0], [1, 0], [0, 0]])
    }

}
