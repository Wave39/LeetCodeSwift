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
        let a3_1 = TreeNode(0)
        let a3_2 = TreeNode(1)
        let a2 = TreeNode(0, a3_1, a3_2)
        let aRoot = TreeNode(1, nil, a2)
        let solve1 = pruneTree(aRoot)
        print("\(solve1!.nodeCount()) -- should be 3")

        let b3_1 = TreeNode(0)
        let b3_2 = TreeNode(0)
        let b3_3 = TreeNode(0)
        let b3_4 = TreeNode(1)
        let b2_1 = TreeNode(0, b3_1, b3_2)
        let b2_2 = TreeNode(1, b3_3, b3_4)
        let bRoot = TreeNode(1, b2_1, b2_2)
        let solve2 = pruneTree(bRoot)
        print("\(solve2!.nodeCount()) -- should be 3")

        let c4_1 = TreeNode(0)
        let c3_1 = TreeNode(1, c4_1, nil)
        let c3_2 = TreeNode(1)
        let c3_3 = TreeNode(0)
        let c3_4 = TreeNode(1)
        let c2_1 = TreeNode(1, c3_1, c3_2)
        let c2_2 = TreeNode(0, c3_3, c3_4)
        let cRoot = TreeNode(1, c2_1, c2_2)
        let solve3 = pruneTree(cRoot)
        print("\(solve3!.nodeCount()) -- should be 6")

        let dRoot = TreeNode(0)
        let solve4 = pruneTree(dRoot)
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
