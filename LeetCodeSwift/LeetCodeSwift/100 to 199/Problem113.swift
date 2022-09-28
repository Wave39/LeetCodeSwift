//
//  Problem113.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/23/22.
//

// 113. Path Sum II
// https://leetcode.com/problems/path-sum-ii/

public class Problem113 {
    public func run() {
        let solve1 = pathSum(TreeNode([5, 4, 8, 11, nil, 13, 4, 7, 2, nil, nil, 5, 1]), 22)
        print("\(solve1) -- should be [[5, 4, 11, 2], [5, 8, 4, 5]]")
        let solve2 = pathSum(TreeNode([1, 2, 3]), 5)
        print("\(solve2) -- should be []")
        let solve3 = pathSum(TreeNode([1, 2]), 0)
        print("\(solve3) -- should be []")
        let solve4 = pathSum(TreeNode([1, 2]), 1)
        print("\(solve4) -- should be []")
    }

    public func test(_ root: TreeNode?, _ targetSum: Int) -> [[Int]] {
        return pathSum(root, targetSum)
    }

    func pathSum(_ root: TreeNode?, _ targetSum: Int) -> [[Int]] {
        var retval = [[Int]]()
        func processNode(_ node: TreeNode, _ previousValues: [Int]) {
            var newValues = previousValues
            newValues.append(node.val)
            if newValues.reduce(0, +) == targetSum && node.left == nil && node.right == nil {
                retval.append(newValues)
            }

            if let left = node.left {
                processNode(left, newValues)
            }

            if let right = node.right {
                processNode(right, newValues)
            }
        }

        if let root = root {
            processNode(root, [])
        }

        return retval
    }
}
