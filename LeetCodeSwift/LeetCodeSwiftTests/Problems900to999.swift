//
//  Problems900to999.swift
//  LeetCodeSwiftTests
//
//  Created by Brian Prescott on 8/31/22.
//

import XCTest

class Problems900to999: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Problem900() throws {
        XCTAssertEqual(Problem900().test([3, 8, 0, 9, 2, 5], [2, 1, 1, 2]), [8, 8, 5, -1])
    }

    func test_Problem905() throws {
        XCTAssertEqual(Problem905().test([3, 1, 2, 4]), [2, 4, 3, 1])
        XCTAssertEqual(Problem905().test([0]), [0])
    }

    func test_Problem942() throws {
        XCTAssertEqual(Problem942().test("IDID"), [0, 4, 1, 3, 2])
        XCTAssertEqual(Problem942().test("III"), [0, 1, 2, 3])
        XCTAssertEqual(Problem942().test("DDI"), [3, 2, 0, 1])
    }

    func test_Problem945() throws {
        XCTAssertEqual(Problem945().test([1, 2, 2]), 1)
        XCTAssertEqual(Problem945().test([3, 2, 1, 2, 1, 7]), 6)
    }

    func test_Problem948() throws {
        XCTAssertEqual(Problem948().test([100], 50), 0)
        XCTAssertEqual(Problem948().test([100, 200], 150), 1)
        XCTAssertEqual(Problem948().test([100, 200, 300, 400], 200), 2)
        XCTAssertEqual(Problem948().test([52, 65, 35, 88, 28, 1, 4, 68, 56, 95], 94), 5)
    }
    
    func test_Problem950() throws {
        XCTAssertEqual(Problem950().test([17, 13, 11, 2, 3, 5, 7]), [2, 13, 3, 11, 5, 17, 7])
        XCTAssertEqual(Problem950().test([1, 1000]), [1, 1000])
    }

    func test_Problem967() throws {
        XCTAssertEqual(Problem967().test(3, 7), [181, 292, 707, 818, 929])
        XCTAssertEqual(Problem967().test(2, 1), [10, 12, 21, 23, 32, 34, 43, 45, 54, 56, 65, 67, 76, 78, 87, 89, 98])
        XCTAssertEqual(Problem967().test(3, 0), [111, 222, 333, 444, 555, 666, 777, 888, 999])
        XCTAssertEqual(Problem967().test(3, 9), [909])
    }

    func test_Problem985() throws {
        XCTAssertEqual(Problem985().test([1, 2, 3, 4], [[1, 0], [-3, 1], [-4, 0], [2, 3]]), [8, 6, 2, 4])
        XCTAssertEqual(Problem985().test([1], [[4,0]]), [0])
    }

    func test_Problem987() throws {
        let aRoot = TreeNode([3, 9, 20, nil, nil, 15, 7])
        XCTAssertEqual(Problem987().test(aRoot), [[9], [3, 15], [20], [7]])
        let bRoot = TreeNode([1, 2, 3, 4, 5, 6, 7])
        XCTAssertEqual(Problem987().test(bRoot), [[4], [2], [1, 5, 6], [3], [7]])
        let cRoot = TreeNode([1, 2, 3, 4, 6, 5, 7])
        XCTAssertEqual(Problem987().test(cRoot), [[4], [2], [1, 5, 6], [3], [7]])
        let dRoot = TreeNode([3, 1, 4, 0, 2, 2])
        XCTAssertEqual(Problem987().test(dRoot), [[0], [1], [3, 2, 2], [4]])
    }

    func test_Problem988() throws {
        XCTAssertEqual(Problem988().test(TreeNode([0, 1, 2, 3, 4, 3, 4])), "dba")
        XCTAssertEqual(Problem988().test(TreeNode([25, 1, 3, 1, 3, 0, 2])), "adz")
        XCTAssertEqual(Problem988().test(TreeNode([2, 2, 1, nil, 1, 0, nil, 0])), "abc")
    }

    func test_Problem990() throws {
        XCTAssertFalse(Problem990().test(["a==b", "b!=a"]))
        XCTAssertTrue(Problem990().test(["b==a", "a==b"]))
    }

    func test_Problem997() throws {
        XCTAssertEqual(Problem997().test(2, [[1, 2]]), 2)
        XCTAssertEqual(Problem997().test(3, [[1, 3], [2, 3]]), 3)
        XCTAssertEqual(Problem997().test(3, [[1, 3], [2, 3], [3, 1]]), -1)
    }

}
