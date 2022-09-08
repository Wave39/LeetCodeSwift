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
        let a3 = TreeNode(3)
        let a2 = TreeNode(2, a3, nil)
        let a1 = TreeNode(1, nil, a2)
        let solve1 = inorderTraversal(a1)
        print("\(solve1) -- should be [1, 3, 2]")

        let solve2 = inorderTraversal(nil)
        print("\(solve2) -- should be []")

        let c1 = TreeNode(1)
        let solve3 = inorderTraversal(c1)
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
