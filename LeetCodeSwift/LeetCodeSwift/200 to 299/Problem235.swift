//
//  Problem235.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/12/22.
//

// 235. Lowest Common Ancestor of a Binary Search Tree
// https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/

public class Problem235 {
    public func run() {
        let a3 = TreeNode(3)
        let a5 = TreeNode(5)
        let a0 = TreeNode(0)
        let a4 = TreeNode(4, a3, a5)
        let a7 = TreeNode(7)
        let a9 = TreeNode(9)
        let a2 = TreeNode(2, a0, a4)
        let a8 = TreeNode(8, a7, a9)
        let a6 = TreeNode(6, a2, a8)
        let solve1 = lowestCommonAncestor(a6, a2, a8)
        print("\(solve1!.val) -- should be 6")
        let solve2 = lowestCommonAncestor(a6, a2, a4)
        print("\(solve2!.val) -- should be 2")
    }

    public func test(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        return lowestCommonAncestor(root, p, q)
    }

    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        var ancestor: TreeNode?
        let pValue = p!.val
        let qValue = q!.val

        func containsNode(_ node: TreeNode, _ val: Int) -> Bool {
            if node.val == val {
                return true
            }

            if let left = node.left {
                if containsNode(left, val) {
                    return true
                }
            }

            if let right = node.right {
                if containsNode(right, val) {
                    return true
                }
            }

            return false
        }

        func setAncestor(_ node: TreeNode) {
            if ancestor == nil {
                ancestor = node
            }
        }

        func processNode(_ node: TreeNode) {
            if node.val == pValue {
                if let left = node.left {
                    if containsNode(left, qValue) {
                        setAncestor(node)
                    }
                }
                if let right = node.right {
                    if containsNode(right, qValue) {
                        setAncestor(node)
                    }
                }
            } else if node.val == qValue {
                if let left = node.left {
                    if containsNode(left, pValue) {
                        setAncestor(node)
                    }
                }
                if let right = node.right {
                    if containsNode(right, pValue) {
                        setAncestor(node)
                    }
                }
            } else {
                if let left = node.left, let right = node.right {
                    if (containsNode(left, pValue) && containsNode(right, qValue)) ||
                        (containsNode(left, qValue) && containsNode(right, pValue)) {
                        setAncestor(node)
                    }
                }
            }

            if ancestor == nil {
                if let left = node.left {
                    processNode(left)
                }

                if let right = node.right {
                    processNode(right)
                }
            }
        }

        guard let root = root else { return nil }

        processNode(root)

        return ancestor
    }
}
