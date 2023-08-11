//
//  Problem226.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/28/22.
//

// 226. Invert Binary Tree (Easy)
// https://leetcode.com/problems/invert-binary-tree/

public class Problem226 {
    public func run() {
        let solve1 = invertTree(TreeNode([4, 2, 7, 1, 3, 6, 9]))
        print("\(solve1!.values()) -- should be [4, 7, 2, 9, 6, 3, 1]")
        let solve2 = invertTree(TreeNode([2, 1, 3]))
        print("\(solve2!.values()) -- should be [2, 3, 1]")
        let solve3 = invertTree(nil)
        print("\(String(describing: solve3)) -- should be nil")
    }

    public func test(_ root: TreeNode?) -> TreeNode? {
        return invertTree(root)
    }

    func invertTree(_ root: TreeNode?) -> TreeNode? {
        func processNode(_ node: TreeNode) {
            let t = node.left
            node.left = node.right
            node.right = t

            if let left = node.left {
                processNode(left)
            }

            if let right = node.right {
                processNode(right)
            }
        }

        guard let root = root else {
            return nil
        }

        processNode(root)
        return root
    }
}
