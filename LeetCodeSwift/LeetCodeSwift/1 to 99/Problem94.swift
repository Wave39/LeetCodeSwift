//
//  Problem94.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/8/22.
//

// 94. Binary Tree Inorder Traversal
// https://leetcode.com/problems/binary-tree-inorder-traversal/

public class Problem94 {
    public func run() {
        let solve1 = inorderTraversal(TreeNode.nodeFromArray([1, nil, 2, 3]))
        print("\(solve1) -- should be [1, 3, 2]")
        let solve2 = inorderTraversal(TreeNode.nodeFromArray([]))
        print("\(solve2) -- should be []")
        let solve3 = inorderTraversal(TreeNode.nodeFromArray([1]))
        print("\(solve3) -- should be [1]")
    }

    public func test(_ root: TreeNode?) -> [Int] {
        return inorderTraversal(root)
    }

    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else {
            return []
        }

        var retval = [Int]()

        func processNode(_ node: TreeNode) {
            if let left = node.left {
                processNode(left)
            }

            retval.append(node.val)

            if let right = node.right {
                processNode(right)
            }
        }

        processNode(root)

        return retval
    }
}
