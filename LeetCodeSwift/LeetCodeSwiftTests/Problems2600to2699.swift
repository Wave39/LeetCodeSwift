//
//  Problems2600to2699.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 11/11/23.
//

import XCTest

final class Problems2600to2699: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem2641() throws {
        let solve1 = Problem2641().test(TreeNode([5, 4, 9, 1, 10, nil, 7]))
        XCTAssertEqual(solve1!.values(), [0, 0, 0, 7, 7, 11])
        let solve2 = Problem2641().test(TreeNode([3, 1, 2]))
        XCTAssertEqual(solve2!.values(), [0, 0, 0])
    }

    func test_Problem2642() throws {
        var solve1 = [Int]()
        let graph1 = Problem2642.Graph(4, [[0, 2, 5], [0, 1, 2], [1, 2, 1], [3, 0, 3]])
        solve1.append(graph1.shortestPath(3, 2))
        solve1.append(graph1.shortestPath(0, 3))
        graph1.addEdge([1, 3, 4])
        solve1.append(graph1.shortestPath(0, 3))
        XCTAssertEqual(solve1, [6, -1, 6])
    }

    func test_Problem2678() throws {
        XCTAssertEqual(Problem2678().test(["7868190130M7522", "5303914400F9211", "9273338290F4010"]), 2)
        XCTAssertEqual(Problem2678().test(["1313579440F2036", "2921522980M5644"]), 0)
    }

    func test_Problem2684() throws {
        XCTAssertEqual(Problem2684().test([[2, 4, 3, 5], [5, 4, 9, 3], [3, 4, 2, 11], [10, 9, 13, 15]]), 3)
        XCTAssertEqual(Problem2684().test([[3, 2, 4], [2, 1, 9], [1, 1, 7]]), 0)
    }

    func test_Problem2696() throws {
        XCTAssertEqual(Problem2696().test("ABFCACDB"), 2)
        XCTAssertEqual(Problem2696().test("ACBBD"), 5)
    }

}
