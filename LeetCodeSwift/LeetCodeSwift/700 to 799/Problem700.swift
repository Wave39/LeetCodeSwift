//
//  Problem700.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/20/22.
//

// 700. Search in a Binary Search Tree
// https://leetcode.com/problems/search-in-a-binary-search-tree/

public class Problem700 {
    public func run() {
        let solve1 = searchBST(TreeNode([4, 2, 7, 1, 3]), 2)
        print("\(String(describing: solve1?.val)), \(String(describing: solve1?.nodeCount())) -- should be 2, 3")
        let solve2 = searchBST(TreeNode([4, 2, 7, 1, 3]), 5)
        print("\(String(describing: solve2)) -- should be nil")
    }

    public func test(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        return searchBST(root, val)
    }

    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        var retval: TreeNode?
        func processNode(node: TreeNode) {
            if node.val == val {
                retval = node
                return
            }

            if val < node.val, let left = node.left {
                processNode(node: left)
            }

            if val > node.val, let right = node.right {
                processNode(node: right)
            }
        }

        processNode(node: root!)

        return retval
    }
}
