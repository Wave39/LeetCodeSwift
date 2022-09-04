//
//  Problem987.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/4/22.
//

// 987. Vertical Order Traversal of a Binary Tree
// https://leetcode.com/problems/vertical-order-traversal-of-a-binary-tree/

public class Problem987 {
    public func run() {
        let a15 = TreeNode(15)
        let a7 = TreeNode(7)
        let a20 = TreeNode(20, a15, a7)
        let a9 = TreeNode(9)
        let aRoot = TreeNode(3, a9, a20)
        let solve1 = verticalTraversal(aRoot)
        print("\(solve1) -- should be [[9], [3, 15], [20], [7]]")

        let b4 = TreeNode(4)
        let b5 = TreeNode(5)
        let b6 = TreeNode(6)
        let b7 = TreeNode(7)
        let b2 = TreeNode(2, b4, b5)
        let b3 = TreeNode(3, b6, b7)
        let bRoot = TreeNode(1, b2, b3)
        let solve2 = verticalTraversal(bRoot)
        print("\(solve2) -- should be [[4], [2], [1, 5, 6], [3], [7]]")

        let c4 = TreeNode(4)
        let c5 = TreeNode(5)
        let c6 = TreeNode(6)
        let c7 = TreeNode(7)
        let c2 = TreeNode(2, c4, c6)
        let c3 = TreeNode(3, c5, c7)
        let cRoot = TreeNode(1, c2, c3)
        let solve3 = verticalTraversal(cRoot)
        print("\(solve3) -- should be [[4], [2], [1, 5, 6], [3], [7]]")

        let d0 = TreeNode(0)
        let d2a = TreeNode(2)
        let d1 = TreeNode(1, d0, d2a)
        let d2b = TreeNode(2)
        let d4 = TreeNode(4, d2b, nil)
        let dRoot = TreeNode(3, d1, d4)
        let solve4 = verticalTraversal(dRoot)
        print("\(solve4) -- should be [[0], [1], [3, 2, 2], [4]]")
    }

    public func test(_ root: TreeNode?) -> [[Int]] {
        return verticalTraversal(root)
    }

    func verticalTraversal(_ root: TreeNode?) -> [[Int]] {
        var nodeDict = [[Int]: [Int]]()

        func processNode(_ node: TreeNode, _ row: Int, _ col: Int) {
            nodeDict[[row, col], default: []].append(node.val)

            if let left = node.left {
                processNode(left, row + 1, col - 1)
            }

            if let right = node.right {
                processNode(right, row + 1, col + 1)
            }
        }

        processNode(root!, 0, 0)

        var retval = [[Int]]()
        let keys = nodeDict.keys
        let columns = Set(keys.map { $0[1] })
        let columnMin = columns.min()!
        let columnMax = columns.max()!
        for column in columnMin...columnMax {
            var columnArray = [Int]()
            let rowKeys = keys.filter { $0[1] == column }
            let rows = rowKeys.map { $0[0] }.sorted()
            for row in rows {
                columnArray.append(contentsOf: nodeDict[[row, column]]!.sorted())
            }

            retval.append(columnArray)
        }

        return retval
    }
}
