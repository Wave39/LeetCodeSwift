//
//  Problem103.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/7/22.
//

// 103. Binary Tree Zigzag Level Order Traversal
// https://leetcode.com/problems/binary-tree-zigzag-level-order-traversal/

public class Problem103 {
    public func run() {
        let solve1 = zigzagLevelOrder(TreeNode([3, 9, 20, nil, nil, 15, 7]))
        print("\(solve1) -- should be [[3], [20, 9], [15, 7]]")
        let solve2 = zigzagLevelOrder(TreeNode([1]))
        print("\(solve2) -- should be [[1]]")
        let solve3 = zigzagLevelOrder(nil)
        print("\(solve3) -- should be []")
    }

    public func test(_ root: TreeNode?) -> [[Int]] {
        return zigzagLevelOrder(root)
    }

    func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else {
            return []
        }

        var retval = [[Int]]()
        var thisLevel = [ root ]
        var level = 1
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

            if level % 2 == 1 {
                retval.append(levelArray)
            } else {
                retval.append(levelArray.reversed())
            }
            thisLevel = nextLevel
            level += 1
        }

        return retval
    }
}
