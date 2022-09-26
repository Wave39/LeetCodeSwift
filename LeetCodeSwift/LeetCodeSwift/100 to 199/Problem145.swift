//
//  Problem145.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/26/22.
//

// 145. Binary Tree Postorder Traversal
// https://leetcode.com/problems/binary-tree-postorder-traversal/

public class Problem145 {
    public func run() {
        let solve1 = postorderTraversal(TreeNode.nodeFromArray([1, nil, 2, 3]))
        print("\(solve1) -- should be [3, 2, 1]")
        let solve2 = postorderTraversal(nil)
        print("\(solve2) -- should be []")
        let solve3 = postorderTraversal(TreeNode.nodeFromArray([1]))
        print("\(solve3) -- should be [1]")
    }

    public func test(_ root: TreeNode?) -> [Int] {
        return postorderTraversal(root)
    }

    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else {
            return []
        }

        var retval = [Int]()
        func processNode(_ node: TreeNode) {
            if let left = node.left {
                processNode(left)
            }

            if let right = node.right {
                processNode(right)
            }

            retval.append(node.val)
        }

        processNode(root)

        return retval
    }
}
