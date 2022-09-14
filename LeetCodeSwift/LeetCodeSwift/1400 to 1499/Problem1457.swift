//
//  Problem1457.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/13/22.
//

// 1457. Pseudo-Palindromic Paths in a Binary Tree
// https://leetcode.com/problems/pseudo-palindromic-paths-in-a-binary-tree/

// WOO HOO!!!
// Runtime: 1827 ms, faster than 100.00% of Swift online submissions for Pseudo-Palindromic Paths in a Binary Tree.
// Memory Usage: 34.4 MB, less than 100.00% of Swift online submissions for Pseudo-Palindromic Paths in a Binary Tree.

public class Problem1457 {
    public func run() {
        let solve1 = pseudoPalindromicPaths(TreeNode.nodeFromArray([2, 3, 1, 3, 1, nil, 1]))
        print("\(solve1) -- should be 2")
        let solve2 = pseudoPalindromicPaths(TreeNode.nodeFromArray([2, 1, 1, 1, 3, nil, nil, nil, nil, nil, 1]))
        print("\(solve2) -- should be 1")
        let solve3 = pseudoPalindromicPaths(TreeNode.nodeFromArray([9]))
        print("\(solve3) -- should be 1")
    }

    public func test(_ root: TreeNode?) -> Int {
        return pseudoPalindromicPaths(root)
    }

    func pseudoPalindromicPaths(_ root: TreeNode?) -> Int {
        var retval = 0

        func processNode(_ node: TreeNode, _ valueSet: Set<Int>) {
            var newSet = valueSet
            if newSet.contains(node.val) {
                newSet.remove(node.val)
            } else {
                newSet.insert(node.val)
            }

            if node.left == nil && node.right == nil {
                if newSet.count <= 1 {
                    retval += 1
                }
            } else {
                if let left = node.left {
                    processNode(left, newSet)
                }

                if let right = node.right {
                    processNode(right, newSet)
                }
            }
        }

        processNode(root!, [])

        return retval
    }
}
