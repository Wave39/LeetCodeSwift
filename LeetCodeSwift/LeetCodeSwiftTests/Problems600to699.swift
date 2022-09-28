//
//  Problems600to699.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 9/1/22.
//

import XCTest

class Problems600to699: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem600() throws {
        XCTAssertEqual(Problem600().test(5), 5)
        XCTAssertEqual(Problem600().test(1), 2)
        XCTAssertEqual(Problem600().test(2), 3)
        XCTAssertEqual(Problem600().test(10000000), 103682)
    }

    func test_Problem606() throws {
        XCTAssertEqual(Problem606().test(TreeNode([1, 2, 3, 4])), "1(2(4))(3)")
        XCTAssertEqual(Problem606().test(TreeNode([1, 2, 3, nil, 4])), "1(2()(4))(3)")
    }

    func test_Problem609() throws {
        let solve1 = Problem609().test(["root/a 1.txt(abcd) 2.txt(efgh)", "root/c 3.txt(abcd)", "root/c/d 4.txt(efgh)", "root 4.txt(efgh)"])
        XCTAssertEqual(solve1, [["root/a/1.txt", "root/c/3.txt"], ["root/a/2.txt", "root/c/d/4.txt", "root/4.txt"]])
        let solve2 = Problem609().test(["root/a 1.txt(abcd) 2.txt(efgh)", "root/c 3.txt(abcd)", "root/c/d 4.txt(efgh)"])
        XCTAssertEqual(solve2, [["root/a/1.txt", "root/c/3.txt"], ["root/a/2.txt", "root/c/d/4.txt"]])
    }

    func test_Problem622() throws {
        let queue1 = Problem622.MyCircularQueue(3)
        XCTAssertTrue(queue1.enQueue(1))
        XCTAssertTrue(queue1.enQueue(2))
        XCTAssertTrue(queue1.enQueue(3))
        XCTAssertFalse(queue1.enQueue(4))
        XCTAssertEqual(queue1.Rear(), 3)
        XCTAssertTrue(queue1.isFull())
        XCTAssertTrue(queue1.deQueue())
        XCTAssertTrue(queue1.enQueue(4))
        XCTAssertEqual(queue1.Rear(), 4)
    }

    func test_Problem637() throws {
        let solve1 = Problem637().test(TreeNode([3, 9, 20, nil, nil, 15, 7]))
        XCTAssertEqual(solve1, [3.0, 14.5, 11.0])
        let solve2 = Problem637().test(TreeNode([3, 9, 20, 15, 7]))
        XCTAssertEqual(solve2, [3.0, 14.5, 11.0])
    }

}
