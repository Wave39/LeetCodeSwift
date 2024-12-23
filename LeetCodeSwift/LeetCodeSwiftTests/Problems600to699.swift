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

    func test_Problem610() throws {
        XCTAssertTrue(Problem610().test())
    }

    func test_Problem619() throws {
        XCTAssertTrue(Problem619().test())
    }

    func test_Problem620() throws {
        XCTAssertTrue(Problem620().test())
    }

    func test_Problem621() throws {
        XCTAssertEqual(Problem621().test(["A", "A", "A", "B", "B", "B"], 2), 8)
        XCTAssertEqual(Problem621().test(["A", "C", "A", "B", "D", "B"], 1), 6)
        XCTAssertEqual(Problem621().test(["A", "A", "A", "B", "B", "B"], 3), 10)
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

    func test_Problem624() throws {
        XCTAssertEqual(Problem624().test([[1, 2, 3], [4, 5], [1, 2, 3]]), 4)
        XCTAssertEqual(Problem624().test([[1], [1]]), 0)
    }

    func test_Problem626() throws {
        XCTAssertTrue(Problem626().test())
    }

    func test_Problem633() throws {
        XCTAssertTrue(Problem633().test(5))
        XCTAssertTrue(Problem633().test(4))

        XCTAssertFalse(Problem633().test(3))
    }

    func test_Problem637() throws {
        let solve1 = Problem637().test(TreeNode([3, 9, 20, nil, nil, 15, 7]))
        XCTAssertEqual(solve1, [3.0, 14.5, 11.0])
        let solve2 = Problem637().test(TreeNode([3, 9, 20, 15, 7]))
        XCTAssertEqual(solve2, [3.0, 14.5, 11.0])
    }

    func test_Problem650() throws {
        XCTAssertEqual(Problem650().test(3), 3)
        XCTAssertEqual(Problem650().test(1), 0)
    }

    func test_Problem653() throws {
        XCTAssertTrue(Problem653().test(TreeNode([5, 3, 6, 2, 4, nil, 7]), 9))
        XCTAssertTrue(Problem653().test(TreeNode([2, 0, 3, -4, 1]), -1))

        XCTAssertFalse(Problem653().test(TreeNode([5, 3, 6, 2, 4, nil, 7]), 28))
        XCTAssertFalse(Problem653().test(TreeNode([2, nil, 3]), 6))
    }
    
    func test_Problem658() throws {
        XCTAssertEqual(Problem658().test([1, 2, 3, 4, 5], 4, 3), [1, 2, 3, 4])
        XCTAssertEqual(Problem658().test([1, 2, 3, 4, 5], 4, -1), [1, 2, 3, 4])
        XCTAssertEqual(Problem658().test([1, 1, 1, 10, 10, 10], 1, 9), [10])
    }

    func test_Problem664() throws {
        XCTAssertEqual(Problem664().test("aaabbb"), 2)
        XCTAssertEqual(Problem664().test("aba"), 2)
    }

    func test_Problem670() throws {
        XCTAssertEqual(Problem670().test(2736), 7236)
        XCTAssertEqual(Problem670().test(9973), 9973)
    }

}
