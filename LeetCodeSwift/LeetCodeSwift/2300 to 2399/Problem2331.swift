//
//  Problem2331.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 5/16/24.
//

// 2331. Evaluate Boolean Binary Tree (Easy)
// https://leetcode.com/problems/evaluate-boolean-binary-tree/

public class Problem2331 {
    public func run() {
        let solve1 = evaluateTree(TreeNode([2, 1, 3, nil, nil, 0, 1]))
        print("\(solve1) -- should be true")
        let solve2 = evaluateTree(TreeNode([0]))
        print("\(solve2) -- should be false")
    }

    public func test(_ root: TreeNode?) -> Bool {
        return evaluateTree(root)
    }

    func evaluateTree(_ root: TreeNode?) -> Bool {
        guard let node = root else { return false }

        if node.left == nil && node.right == nil {
            return node.val == 1
        }

        let v1 = evaluateTree(node.left)
        let v2 = evaluateTree(node.right)
        if node.val == 2 {
            return v1 || v2
        } else {
            return v1 && v2
        }
    }
}
