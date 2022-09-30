//
//  Problems700to799.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 8/25/22.
//

import XCTest

class Problems700to799: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem700() throws {
        let solve1 = Problem700().test(TreeNode([4, 2, 7, 1, 3]), 2)
        XCTAssertEqual(solve1!.val, 2)
        XCTAssertEqual(solve1!.nodeCount(), 3)
        let solve2 = Problem700().test(TreeNode([4, 2, 7, 1, 3]), 5)
        XCTAssertNil(solve2)
    }

    func test_Problem701() throws {
        let solve1 = Problem701().test(TreeNode([4, 2, 7, 1, 3]), 5)
        XCTAssertEqual(solve1!.values(), [4, 2, 7, 1, 3, 5])
        let solve2 = Problem701().test(TreeNode([40, 20, 60, 10, 30, 50, 70]), 25)
        XCTAssertEqual(solve2!.values(), [40, 20, 60, 10, 30, 50, 70, 25])
        let solve3 = Problem701().test(TreeNode([4, 2, 7, 1, 3, nil, nil, nil, nil, nil, nil]), 5)
        XCTAssertEqual(solve3!.values(), [4, 2, 7, 1, 3, 5])
    }

    func test_Problem704() throws {
        XCTAssertEqual(Problem704().test([-1, 0, 3, 5, 9, 12], 9), 4)
        XCTAssertEqual(Problem704().test([-1, 0, 3, 5, 9, 12], 2), -1)
        XCTAssertEqual(Problem704().test([2, 5], 0), -1)
        XCTAssertEqual(Problem704().test([2, 5], 9), -1)
        XCTAssertEqual(Problem704().test([5], 5), 0)
        XCTAssertEqual(Problem704().test([2, 5], 5), 1)
    }

    func test_Problem718() throws {
        XCTAssertEqual(Problem718().test([1, 2, 3, 2, 1], [3, 2, 1, 4, 7]), 3)
        XCTAssertEqual(Problem718().test([0, 0, 0, 0, 0], [0, 0, 0, 0, 0]), 5)
    }

    func test_Problem724() throws {
        XCTAssertEqual(Problem724().test([1, 7, 3, 6, 5, 6]), 3)
        XCTAssertEqual(Problem724().test([1, 2, 3]), -1)
        XCTAssertEqual(Problem724().test([2, 1, -1]), 0)
        XCTAssertEqual(Problem724().test([-1, -1, -1, 1, 1, 1]), -1)
    }

    func test_Problem733() throws {
        let solve1 = Problem733().test([[1, 1, 1], [1, 1, 0], [1, 0, 1]], 1, 1, 2)
        XCTAssertEqual(solve1, [[2, 2, 2], [2, 2, 0], [2, 0, 1]])
        let solve2 = Problem733().test([[0, 0, 0], [0, 0, 0]], 0, 0, 0)
        XCTAssertEqual(solve2, [[0, 0, 0], [0, 0, 0]])
    }

    func test_Problem746() throws {
        XCTAssertEqual(Problem746().test([10, 15, 20]), 15)
        XCTAssertEqual(Problem746().test([1, 100, 1, 1, 1, 100, 1, 1, 100, 1]), 6)
}

    func test_Problem747() throws {
        XCTAssertEqual(Problem747().test([3, 6, 1, 0]), 1)
        XCTAssertEqual(Problem747().test([1, 2, 3, 4]), -1)
        XCTAssertEqual(Problem747().test([0, 0, 0, 1]), 3)
    }

}
