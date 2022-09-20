//
//  Problem814.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/5/22.
//

// 814. Binary Tree Pruning
// https://leetcode.com/problems/binary-tree-pruning/

public class Problem814 {
    public func run() {
        let solve1 = pruneTree(TreeNode.nodeFromArray([1, nil, 0, 0, 1]))
        print("\(solve1!.nodeCount()) -- should be 3")
        let solve2 = pruneTree(TreeNode.nodeFromArray([1, 0, 1, 0, 0, 0, 1]))
        print("\(solve2!.nodeCount()) -- should be 3")
        let solve3 = pruneTree(TreeNode.nodeFromArray([1, 1, 0, 1, 1, 0, 1, 0]))
        print("\(solve3!.nodeCount()) -- should be 6")
        let solve4 = pruneTree(TreeNode.nodeFromArray([]))
        print("\(String(describing: solve4)) -- should be nil")
    }

    public func test(_ root: TreeNode?) -> TreeNode? {
        return pruneTree(root)
    }

    func pruneTree(_ root: TreeNode?) -> TreeNode? {
        func treeHasOne(_ node: TreeNode?) -> Bool {
            guard let node = node else { return false }
            return node.val == 1 || treeHasOne(node.left) || treeHasOne(node.right)
        }

        func processNode(_ node: TreeNode?) {
            if treeHasOne(node?.left) {
                processNode(node?.left)
            } else {
                node?.left = nil
            }

            if treeHasOne(node?.right) {
                processNode(node?.right)
            } else {
                node?.right = nil
            }
        }

        processNode(root)

        if root?.val == 0 && root?.left == nil && root?.right == nil {
            return nil
        }

        return root
    }
}
