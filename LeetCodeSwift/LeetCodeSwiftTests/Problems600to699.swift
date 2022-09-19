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

    func test_Problem606() throws {
        let a4 = TreeNode(4)
        let a2 = TreeNode(2, a4, nil)
        let a3 = TreeNode(3)
        let a1 = TreeNode(1, a2, a3)
        XCTAssertEqual(Problem606().test(a1), "1(2(4))(3)")

        let b4 = TreeNode(4)
        let b2 = TreeNode(2, nil, b4)
        let b3 = TreeNode(3)
        let b1 = TreeNode(1, b2, b3)
        XCTAssertEqual(Problem606().test(b1), "1(2()(4))(3)")
    }

    func test_Problem609() throws {
        let solve1 = Problem609().test(["root/a 1.txt(abcd) 2.txt(efgh)", "root/c 3.txt(abcd)", "root/c/d 4.txt(efgh)", "root 4.txt(efgh)"])
        XCTAssertEqual(solve1, [["root/a/1.txt", "root/c/3.txt"], ["root/a/2.txt", "root/c/d/4.txt", "root/4.txt"]])
        let solve2 = Problem609().test(["root/a 1.txt(abcd) 2.txt(efgh)", "root/c 3.txt(abcd)", "root/c/d 4.txt(efgh)"])
        XCTAssertEqual(solve2, [["root/a/1.txt", "root/c/3.txt"], ["root/a/2.txt", "root/c/d/4.txt"]])
    }

    func test_Problem637() throws {
        let a9 = TreeNode(9)
        let a15 = TreeNode(15)
        let a7 = TreeNode(7)
        let a20 = TreeNode(20, a15, a7)
        let aRoot = TreeNode(3, a9, a20)
        let solve1 = Problem637().test(aRoot)
        XCTAssertEqual(solve1, [3.0, 14.5, 11.0])

        let b15 = TreeNode(15)
        let b7 = TreeNode(7)
        let b9 = TreeNode(9, b15, b7)
        let b20 = TreeNode(20)
        let bRoot = TreeNode(3, b9, b20)
        let solve2 = Problem637().test(bRoot)
        XCTAssertEqual(solve2, [3.0, 14.5, 11.0])
    }

}
