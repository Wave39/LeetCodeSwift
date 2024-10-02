//
//  Problems1300to1399.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 8/27/22.
//

import XCTest

class Problems1300to1399: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem1310() throws {
        XCTAssertEqual(Problem1310().test([1, 3, 4, 8], [[0, 1], [1, 2], [0, 3], [3, 3]]), [2, 7, 14, 8])
        XCTAssertEqual(Problem1310().test([4, 8, 2, 10], [[2, 3], [1, 3], [0, 0], [0, 3]]), [8, 0, 4, 4])
    }

    func test_Problem1323() throws {
        XCTAssertEqual(Problem1323().test(9669), 9969)
        XCTAssertEqual(Problem1323().test(9996), 9999)
        XCTAssertEqual(Problem1323().test(9999), 9999)
    }

    func test_Problem1325() throws {
        XCTAssertEqual(Problem1325().test(TreeNode([1, 2, 3, 2, nil, 2, 4]), 2)!.values(), [1, 3, 4])
        XCTAssertEqual(Problem1325().test(TreeNode([1, 3, 3, 3, 2]), 3)!.values(), [1, 3, 2])
        XCTAssertEqual(Problem1325().test(TreeNode([1, 2, nil, 2, nil, 2]), 2)!.values(), [1])
    }

    func test_Problem1326() throws {
        XCTAssertEqual(Problem1326().test(5, [3, 4, 1, 1, 0, 0]), 1)
        XCTAssertEqual(Problem1326().test(3, [0, 0, 0, 0]), -1)
        XCTAssertEqual(Problem1326().test(5, [3, 0, 1, 1, 0, 0]), -1)
    }

    func test_Problem1329() throws {
        XCTAssertEqual(Problem1329().test([[3, 3, 1, 1], [2, 2, 1, 2], [1, 1, 1, 2]]), [[1, 1, 1, 1], [1, 2, 2, 2], [1, 2, 3, 3]])
        XCTAssertEqual(Problem1329().test([[11, 25, 66, 1, 69, 7], [23, 55, 17, 45, 15, 52], [75, 31, 36, 44, 58, 8], [22, 27, 33, 25, 68, 4], [84, 28, 14, 11, 5, 50]]), [[5, 17, 4, 1, 52, 7], [11, 11, 25, 45, 8, 69], [14, 23, 25, 44, 58, 15], [22, 27, 31, 36, 50, 66], [84, 28, 75, 33, 55, 68]])
    }

    func test_Problem1331() throws {
        XCTAssertEqual(Problem1331().test([40, 10, 20, 30]), [4, 1, 2, 3])
        XCTAssertEqual(Problem1331().test([100, 100, 100]), [1, 1, 1])
        XCTAssertEqual(Problem1331().test([37, 12, 28, 9, 100, 56, 80, 5, 12]), [5, 3, 4, 2, 8, 6, 7, 1, 3])
    }

    func test_Problem1334() throws {
        XCTAssertEqual(Problem1334().test(4, [[0, 1, 3], [1, 2, 1], [1, 3, 4], [2, 3, 1]], 4), 3)
        XCTAssertEqual(Problem1334().test(5, [[0, 1, 2], [0, 4, 8], [1, 2, 3], [1, 4, 2], [2, 3, 1], [3, 4, 1]], 2), 0)
    }

    func test_Problem1337() throws {
        XCTAssertEqual(Problem1337().test([[1, 1, 0, 0, 0],
                                           [1, 1, 1, 1, 0],
                                           [1, 0, 0, 0, 0],
                                           [1, 1, 0, 0, 0],
                                           [1, 1, 1, 1, 1]], 3), [2, 0, 3])
        XCTAssertEqual(Problem1337().test([[1, 0, 0, 0],
                                           [1, 1, 1, 1],
                                           [1, 0, 0, 0],
                                           [1, 0, 0, 0]], 2), [0, 2])
    }

    func test_Problem1356() throws {
        XCTAssertEqual(Problem1356().test([0, 1, 2, 3, 4, 5, 6, 7, 8]), [0, 1, 2, 4, 8, 3, 5, 6, 7])
        XCTAssertEqual(Problem1356().test([1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1]), [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024])
        XCTAssertEqual(Problem1356().test([10_000, 10_000]), [10000, 10000])
    }

    func test_Problem1378() throws {
        XCTAssertTrue(Problem1378().test())
    }

    func test_Problem1383() throws {
        XCTAssertEqual(Problem1383().test(6, [2, 10, 3, 1, 5, 8], [5, 4, 3, 9, 7, 2], 2), 60)
        XCTAssertEqual(Problem1383().test(6, [2, 10, 3, 1, 5, 8], [5, 4, 3, 9, 7, 2], 3), 68)
        XCTAssertEqual(Problem1383().test(6, [2, 10, 3, 1, 5, 8], [5, 4, 3, 9, 7, 2], 4), 72)
    }

}
