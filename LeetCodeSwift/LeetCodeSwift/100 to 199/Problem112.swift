//
//  Problem112.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/28/22.
//

// 112. Path Sum (Easy)
// https://leetcode.com/problems/path-sum/

public class Problem112 {
    public func run() {
        let solve1 = hasPathSum(TreeNode([5, 4, 8, 11, nil, 13, 4, 7, 2, nil, nil, nil, 1]), 22)
        print("\(solve1) -- should be true")
        let solve2 = hasPathSum(TreeNode([1, 2, 3]), 5)
        print("\(solve2) -- should be false")
        let solve3 = hasPathSum(TreeNode([1, 2]), 0)
        print("\(solve3) -- should be false")
        let solve4 = hasPathSum(TreeNode([1, 2]), 1)
        print("\(solve4) -- should be false")
    }

    public func test(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        return hasPathSum(root, targetSum)
    }

    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        var retval = false
        func processNode(_ node: TreeNode, _ previousValues: [Int]) {
            var newValues = previousValues
            newValues.append(node.val)
            if newValues.reduce(0, +) == targetSum && node.left == nil && node.right == nil {
                retval = true
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
