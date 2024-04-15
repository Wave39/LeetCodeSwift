//
//  Problems100to199.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 8/24/22.
//

import XCTest

class Problems100to199: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem100() throws {
        let left1 = TreeNode([1, 2, 3])
        let right1 = TreeNode([1, 2, 3])
        let solve1 = Problem100().test(left1, right1)
        XCTAssertTrue(solve1)

        let left2 = TreeNode([1, 2])
        let right2 = TreeNode([1, nil, 2])
        let solve2 = Problem100().test(left2, right2)
        XCTAssertFalse(solve2)

        let left3 = TreeNode([1, 2, 1])
        let right3 = TreeNode([1, 1, 2])
        let solve3 = Problem100().test(left3, right3)
        XCTAssertFalse(solve3)
    }

    func test_Problem101() throws {
        XCTAssertTrue(Problem101().test(TreeNode([1, 2, 2, 3, 4, 4, 3])))

        XCTAssertFalse(Problem101().test(TreeNode([1, 2, 2, nil, 3, nil, 3])))
        XCTAssertFalse(Problem101().test(TreeNode([1, 0])))
    }

    func test_Problem102() throws {
        let solve1 = Problem102().test(TreeNode([3, 9, 20, nil, nil, 15, 7]))
        XCTAssertEqual(solve1, [[3], [9, 20], [15, 7]])
        let solve2 = Problem102().test(TreeNode([1]))
        XCTAssertEqual(solve2, [[1]])
        let solve3 = Problem102().test(nil)
        XCTAssertEqual(solve3, [])
    }

    func test_Problem103() throws {
        let solve1 = Problem103().test(TreeNode([3, 9, 20, nil, nil, 15, 7]))
        XCTAssertEqual(solve1, [[3], [20, 9], [15, 7]])
        let solve2 = Problem103().test(TreeNode([1]))
        XCTAssertEqual(solve2, [[1]])
        let solve3 = Problem103().test(nil)
        XCTAssertEqual(solve3, [])
    }

    func test_Problem104() throws {
        XCTAssertEqual(Problem104().test(TreeNode([3, 9, 20, nil, nil, 15, 7])), 3)
        XCTAssertEqual(Problem104().test(TreeNode([1, nil, 2])), 2)
    }

    func test_Problem112() throws {
        XCTAssertTrue(Problem112().test(TreeNode([5, 4, 8, 11, nil, 13, 4, 7, 2, nil, nil, nil, 1]), 22))

        XCTAssertFalse(Problem112().test(TreeNode([1, 2, 3]), 5))
        XCTAssertFalse(Problem112().test(TreeNode([1, 2]), 0))
        XCTAssertFalse(Problem112().test(TreeNode([1, 2]), 1))
    }

    func test_Problem113() throws {
        let root1 = TreeNode([5, 4, 8, 11, nil, 13, 4, 7, 2, nil, nil, 5, 1])
        let solve1 = Problem113().test(root1, 22)
        XCTAssertEqual(solve1, [[5, 4, 11, 2], [5, 8, 4, 5]])
        XCTAssertEqual(Problem113().test(TreeNode([1, 2, 3]), 5), [])
        XCTAssertEqual(Problem113().test(TreeNode([1, 2]), 0), [])
        XCTAssertEqual(Problem113().test(TreeNode([1, 2]), 1), [])
    }

    func test_Problem118() throws {
        let solve1 = Problem118().test(5)
        XCTAssertEqual(solve1, [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1]])
        let solve2 = Problem118().test(1)
        XCTAssertEqual(solve2, [[1]])
    }

    func test_Problem119() throws {
        let solve1 = Problem119().test(4)
        XCTAssertEqual(solve1, [1, 4, 6, 4, 1])
        let solve2 = Problem119().test(0)
        XCTAssertEqual(solve2, [1])
        let solve3 = Problem119().test(1)
        XCTAssertEqual(solve3, [1, 1])
        let solve4 = Problem119().test(3)
        XCTAssertEqual(solve4, [1, 3, 3, 1])
    }

    func test_Problem121() throws {
        XCTAssertEqual(Problem121().test([7, 1, 5, 3, 6, 4]), 5)
        XCTAssertEqual(Problem121().test([7, 6, 4, 3, 1]), 0)
        XCTAssertEqual(Problem121().test([3, 10, 1, 2]), 7)
    }

    func test_Problem129() throws {
        XCTAssertEqual(Problem129().test(TreeNode([1, 2, 3])), 25)
        XCTAssertEqual(Problem129().test(TreeNode([4, 9, 0, 5, 1])), 1026)
    }

    func test_Problem134() throws {
        XCTAssertEqual(Problem134().test([1, 2, 3, 4, 5], [3, 4, 5, 1, 2]), 3)
        XCTAssertEqual(Problem134().test([2, 3, 4], [3, 4, 3]), -1)
    }

    func test_Problem135() throws {
        XCTAssertEqual(Problem135().test([1, 0, 2]), 5)
        XCTAssertEqual(Problem135().test([1, 2, 2]), 4)
        XCTAssertEqual(Problem135().test([0]), 1)
    }

    func test_Problem138() throws {
        let list1 = NodeWithRandom.getList([[7, nil], [13, 0], [11, 4], [10, 2], [1, 0]])
        let solve1 = Problem138().test(list1.first)
        XCTAssertEqual(solve1!.val, 7)
        let list2 = NodeWithRandom.getList([[1, 1], [2, 1]])
        let solve2 = Problem138().test(list2.first)
        XCTAssertEqual(solve2!.val, 1)
        let list3 = NodeWithRandom.getList([[3, nil], [3, 0], [3, nil]])
        let solve3 = Problem138().test(list3.first)
        XCTAssertEqual(solve3!.val, 3)
    }

    func test_Problem141() throws {
        let list1 = ListNode.arrayToList([3, 2, 0, -4])
        let tail1 = list1.tail()
        let node1 = list1.nodeAtIndex(1)
        tail1.next = node1
        XCTAssertTrue(Problem141().test(list1))

        let list2 = ListNode.arrayToList([1, 2])
        let tail2 = list2.tail()
        tail2.next = list2
        XCTAssertTrue(Problem141().test(list2))

        let list3 = ListNode.arrayToList([1])
        XCTAssertFalse(Problem141().test(list3))
    }

    func test_Problem142() throws {
        let list1 = ListNode.arrayToList([3, 2, 0, -4])
        let tail1 = list1.tail()
        let node1 = list1.nodeAtIndex(1)
        tail1.next = node1
        let solve1 = Problem142().test(list1)
        XCTAssertEqual(solve1!.val, 2)

        let list2 = ListNode.arrayToList([1, 2])
        let tail2 = list2.tail()
        tail2.next = list2
        let solve2 = Problem142().test(list2)
        XCTAssertEqual(solve2!.val, 1)

        let list3 = ListNode.arrayToList([1])
        let solve3 = Problem142().test(list3)
        XCTAssertNil(solve3)
    }

    func test_Problem144() throws {
        XCTAssertEqual(Problem144().test(TreeNode([1, nil, 2, 3])), [1, 2, 3])
        XCTAssertEqual(Problem144().test(nil), [])
        XCTAssertEqual(Problem144().test(TreeNode([1])), [1])
    }

    func test_Problem145() throws {
        XCTAssertEqual(Problem145().test(TreeNode([1, nil, 2, 3])), [3, 2, 1])
        XCTAssertEqual(Problem145().test(nil), [])
        XCTAssertEqual(Problem145().test(TreeNode([1])), [1])
    }

    func test_Problem168() throws {
        XCTAssertEqual(Problem168().test(1), "A")
        XCTAssertEqual(Problem168().test(28), "AB")
        XCTAssertEqual(Problem168().test(701), "ZY")
    }

    func test_Problem175() throws {
        // SQL problem
        XCTAssertTrue(true)
    }

    func test_Problem188() throws {
        XCTAssertEqual(Problem188().test(2, [2, 4, 1]), 2)
        XCTAssertEqual(Problem188().test(2, [3, 2, 6, 5, 0, 3]), 7)
    }

    func test_Problem191() throws {
        XCTAssertEqual(Problem191().test(11), 3)
    }

}
