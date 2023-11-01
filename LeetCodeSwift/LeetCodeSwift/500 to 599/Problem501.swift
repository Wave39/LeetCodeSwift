//
//  Problem501.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/31/23.
//

// 501. Find Mode in Binary Search Tree (Easy)
// https://leetcode.com/problems/find-mode-in-binary-search-tree/

public class Problem501 {
    public func run() {
        let solve1 = findMode(TreeNode([1, nil, 2, 2]))
        print("\(solve1) -- should be [2]")
        let solve2 = findMode(TreeNode([0]))
        print("\(solve2) -- should be [0]")
    }

    public func test(_ root: TreeNode?) -> [Int] {
        return findMode(root)
    }

    func findMode(_ root: TreeNode?) -> [Int] {
        var dict: [Int: Int] = [:]

        func walkNode(_ node: TreeNode) {
            dict[node.val, default: 0] += 1
            if let left = node.left {
                walkNode(left)
            }

            if let right = node.right {
                walkNode(right)
            }
        }

        if let root {
            walkNode(root)
        }

        let maxValue = dict.values.map { Int($0) }.max() ?? 0
        var retval = [Int]()
        for k in dict.keys {
            if dict[k] == maxValue {
                retval.append(k)
            }
        }

        return retval
    }
}
