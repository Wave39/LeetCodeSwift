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
        let left1 = TreeNode.nodeFromArray([1, 2, 3])
        let right1 = TreeNode.nodeFromArray([1, 2, 3])
        let solve1 = Problem100().test(left1, right1)
        XCTAssertTrue(solve1)

        let left2 = TreeNode.nodeFromArray([1, 2])
        let right2 = TreeNode.nodeFromArray([1, nil, 2])
        let solve2 = Problem100().test(left2, right2)
        XCTAssertFalse(solve2)

        let left3 = TreeNode.nodeFromArray([1, 2, 1])
        let right3 = TreeNode.nodeFromArray([1, 1, 2])
        let solve3 = Problem100().test(left3, right3)
        XCTAssertFalse(solve3)
    }

    func test_Problem102() throws {
        let solve1 = Problem102().test(TreeNode.nodeFromArray([3, 9, 20, nil, nil, 15, 7]))
        XCTAssertEqual(solve1, [[3], [9, 20], [15, 7]])
        let solve2 = Problem102().test(TreeNode.nodeFromArray([1]))
        XCTAssertEqual(solve2, [[1]])
        let solve3 = Problem102().test(TreeNode.nodeFromArray([]))
        XCTAssertEqual(solve3, [])
    }

    func test_Problem103() throws {
        let solve1 = Problem103().test(TreeNode.nodeFromArray([3, 9, 20, nil, nil, 15, 7]))
        XCTAssertEqual(solve1, [[3], [20, 9], [15, 7]])
        let solve2 = Problem103().test(TreeNode.nodeFromArray([1]))
        XCTAssertEqual(solve2, [[1]])
        let solve3 = Problem103().test(TreeNode.nodeFromArray([]))
        XCTAssertEqual(solve3, [])
    }

    func test_Problem113() throws {
        let root1 = TreeNode.nodeFromArray([5, 4, 8, 11, nil, 13, 4, 7, 2, nil, nil, 5, 1])
        let solve1 = Problem113().test(root1, 22)
        XCTAssertEqual(solve1, [[5, 4, 11, 2], [5, 8, 4, 5]])
        XCTAssertEqual(Problem113().test(TreeNode.nodeFromArray([1, 2, 3]), 5), [])
        XCTAssertEqual(Problem113().test(TreeNode.nodeFromArray([1, 2]), 0), [])
        XCTAssertEqual(Problem113().test(TreeNode.nodeFromArray([1, 2]), 1), [])
    }

    func test_Problem118() throws {
        let solve1 = Problem118().test(5)
        XCTAssertEqual(solve1, [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1]])
        let solve2 = Problem118().test(1)
        XCTAssertEqual(solve2, [[1]])
    }

    func test_Problem121() throws {
        XCTAssertEqual(Problem121().test([7, 1, 5, 3, 6, 4]), 5)
        XCTAssertEqual(Problem121().test([7, 6, 4, 3, 1]), 0)
        XCTAssertEqual(Problem121().test([3, 10, 1, 2]), 7)
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
        XCTAssertEqual(Problem144().test(TreeNode.nodeFromArray([1, nil, 2, 3])), [1, 2, 3])
        XCTAssertEqual(Problem144().test(nil), [])
        XCTAssertEqual(Problem144().test(TreeNode.nodeFromArray([1])), [1])
    }

    func test_Problem145() throws {
        XCTAssertEqual(Problem145().test(TreeNode.nodeFromArray([1, nil, 2, 3])), [3, 2, 1])
        XCTAssertEqual(Problem145().test(nil), [])
        XCTAssertEqual(Problem145().test(TreeNode.nodeFromArray([1])), [1])
    }

    func test_Problem188() throws {
        XCTAssertEqual(Problem188().test(2, [2, 4, 1]), 2)
        XCTAssertEqual(Problem188().test(2, [3, 2, 6, 5, 0, 3]), 7)
    }

}
