//
//  Problem144.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/26/22.
//

// 144. Binary Tree Preorder Traversal (Easy)
// https://leetcode.com/problems/binary-tree-preorder-traversal/

public class Problem144 {
    public func run() {
        let solve1 = preorderTraversal(TreeNode([1, nil, 2, 3]))
        print("\(solve1) -- should be [1, 2, 3]")
        let solve2 = preorderTraversal(nil)
        print("\(solve2) -- should be []")
        let solve3 = preorderTraversal(TreeNode([1]))
        print("\(solve3) -- should be [1]")
    }

    public func test(_ root: TreeNode?) -> [Int] {
        return preorderTraversal(root)
    }

    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else {
            return []
        }

        var retval = [Int]()
        func processNode(_ node: TreeNode) {
            retval.append(node.val)

            if let left = node.left {
                processNode(left)
            }

            if let right = node.right {
                processNode(right)
            }
        }

        processNode(root)

        return retval
    }
}
