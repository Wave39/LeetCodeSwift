//
//  Problem102.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/6/22.
//

// 102. Binary Tree Level Order Traversal
// https://leetcode.com/problems/binary-tree-level-order-traversal/

public class Problem102 {
    public func run() {
        let solve1 = levelOrder(TreeNode([3, 9, 20, nil, nil, 15, 7]))
        print("\(solve1) -- should be [[3], [9, 20], [15, 7]]")
        let solve2 = levelOrder(TreeNode([1]))
        print("\(solve2) -- should be [[1]]")
        let solve3 = levelOrder(nil)
        print("\(solve3) -- should be []")
    }

    public func test(_ root: TreeNode?) -> [[Int]] {
        return levelOrder(root)
    }

    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else {
            return []
        }

        var retval = [[Int]]()
        var thisLevel = [ root ]
        while !thisLevel.isEmpty {
            var levelArray = [Int]()
            var nextLevel = [TreeNode]()
            for node in thisLevel {
                levelArray.append(node.val)
                if let left = node.left {
                    nextLevel.append(left)
                }

                if let right = node.right {
                    nextLevel.append(right)
                }
            }

            retval.append(levelArray)
            thisLevel = nextLevel
        }

        return retval
    }
}
