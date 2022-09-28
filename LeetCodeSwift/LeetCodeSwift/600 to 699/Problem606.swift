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
        let solve1 = tree2str(TreeNode([1, 2, 3, 4]))
        print("\(solve1) -- should be 1(2(4))(3)")
        let solve2 = tree2str(TreeNode([1, 2, 3, nil, 4]))
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

