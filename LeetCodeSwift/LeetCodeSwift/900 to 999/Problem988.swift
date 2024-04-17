//
//  Problem988.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 4/17/24.
//

// 988. Smallest String Starting From Leaf (Medium)
// https://leetcode.com/problems/smallest-string-starting-from-leaf/

public class Problem988 {
    public func run() {
        let solve1 = smallestFromLeaf(TreeNode([0, 1, 2, 3, 4, 3, 4]))
        print("\(solve1) -- should be dba")
        let solve2 = smallestFromLeaf(TreeNode([25, 1, 3, 1, 3, 0, 2]))
        print("\(solve2) -- should be adz")
        let solve3 = smallestFromLeaf(TreeNode([2, 2, 1, nil, 1, 0, nil, 0]))
        print("\(solve3) -- should be abc")
    }

    public func test(_ root: TreeNode?) -> String {
        return smallestFromLeaf(root)
    }

    func smallestFromLeaf(_ root: TreeNode?) -> String {
        var retval = "zzzzzzzzzzzzzzzzzzzzzzzzzzz"

        func processTreeNode(_ node: TreeNode, _ stringSoFar: String) {
            let newString = "\(stringSoFar)\(UnicodeScalar(97 + node.val)!)"
            if node.left == nil && node.right == nil {
                let reversedString = String(newString.reversed())
                if reversedString < retval {
                    retval = reversedString
                }
            } else {
                if let left = node.left {
                    processTreeNode(left, newString)
                }

                if let right = node.right {
                    processTreeNode(right, newString)
                }
            }
        }

        processTreeNode(root!, "")

        return retval
    }
}
