//
//  Problem129.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 4/15/24.
//

// 129. Sum Root to Leaf Numbers (Medium)
// https://leetcode.com/problems/sum-root-to-leaf-numbers/

public class Problem129 {
    public func run() {
        let solve1 = sumNumbers(TreeNode([1, 2, 3]))
        print("\(solve1) -- should be 25")
        let solve2 = sumNumbers(TreeNode([4, 9, 0, 5, 1]))
        print("\(solve2) -- should be 1026")
    }

    public func test(_ root: TreeNode?) -> Int {
        return sumNumbers(root)
    }

    func sumNumbers(_ root: TreeNode?) -> Int {
        var retval = 0

        func processTreeNode(_ node: TreeNode, _ digitsSoFar: String) {
            let digits = "\(digitsSoFar)\(node.val)"
            if node.left == nil && node.right == nil {
                retval += Int(digits)!
            } else {
                if let left = node.left {
                    processTreeNode(left, digits)
                }

                if let right = node.right {
                    processTreeNode(right, digits)
                }
            }
        }

        processTreeNode(root!, "")

        return retval
    }
}
