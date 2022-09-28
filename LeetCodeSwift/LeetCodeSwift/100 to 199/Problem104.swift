//
//  Problem104.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/26/22.
//

// 104. Maximum Depth of Binary Tree
// https://leetcode.com/problems/maximum-depth-of-binary-tree/

public class Problem104 {
    public func run() {
        let solve1 = maxDepth(TreeNode([3, 9, 20, nil, nil, 15, 7]))
        print("\(solve1) -- should be 3")
        let solve2 = maxDepth(TreeNode([1, nil, 2]))
        print("\(solve2) -- should be 2")
    }

    public func test(_ root: TreeNode?) -> Int {
        return maxDepth(root)
    }

    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }

        var depth = 0
        func processNode(_ node: TreeNode, _ previousDepth: Int) {
            let newDepth = previousDepth + 1
            if newDepth > depth {
                depth = newDepth
            }

            if let left = node.left {
                processNode(left, newDepth)
            }

            if let right = node.right {
                processNode(right, newDepth)
            }
        }

        processNode(root, 0)
        return depth
    }
}
