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
        let solve1 = verticalTraversal(TreeNode([3, 9, 20, nil, nil, 15, 7]))
        print("\(solve1) -- should be [[9], [3, 15], [20], [7]]")
        let solve2 = verticalTraversal(TreeNode([1, 2, 3, 4, 5, 6, 7]))
        print("\(solve2) -- should be [[4], [2], [1, 5, 6], [3], [7]]")
        let solve3 = verticalTraversal(TreeNode([1, 2, 3, 4, 6, 5, 7]))
        print("\(solve3) -- should be [[4], [2], [1, 5, 6], [3], [7]]")
        let solve4 = verticalTraversal(TreeNode([3, 1, 4, 0, 2, 2]))
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
