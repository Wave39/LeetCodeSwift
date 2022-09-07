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
        let a15 = TreeNode(15)
        let a7 = TreeNode(7)
        let a9 = TreeNode(9)
        let a20 = TreeNode(20, a15, a7)
        let a3 = TreeNode(3, a9, a20)
        let solve1 = levelOrder(a3)
        print("\(solve1) -- should be [[3], [9, 20], [15, 7]]")

        let b1 = TreeNode(1)
        let solve2 = levelOrder(b1)
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
