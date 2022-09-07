//
//  Problem606.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/6/22.
//

// 606. Construct String from Binary Tree
// https://leetcode.com/problems/construct-string-from-binary-tree/

public class Problem606 {
    public func run() {
        let a4 = TreeNode(4)
        let a2 = TreeNode(2, a4, nil)
        let a3 = TreeNode(3)
        let a1 = TreeNode(1, a2, a3)
        let solve1 = tree2str(a1)
        print("\(solve1) -- should be 1(2(4))(3)")

        let b4 = TreeNode(4)
        let b2 = TreeNode(2, nil, b4)
        let b3 = TreeNode(3)
        let b1 = TreeNode(1, b2, b3)
        let solve2 = tree2str(b1)
        print("\(solve2) -- should be 1(2()(4))(3)")
    }

    public func test(_ root: TreeNode?) -> String {
        return tree2str(root)
    }

    func tree2str(_ root: TreeNode?) -> String {
        var retval = ""

        func processNode(_ node: TreeNode) {
            retval += "\(node.val)"
            if let left = node.left {
                retval += "("
                processNode(left)
                retval += ")"
            } else if node.right != nil {
                retval += "()"
            }
            
            if let right = node.right {
                retval += "("
                processNode(right)
                retval += ")"
            }
        }

        processNode(root!)

        return retval
    }
}

