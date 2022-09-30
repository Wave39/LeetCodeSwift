//
//  Problem701.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/30/22.
//

// 701. Insert into a Binary Search Tree
// https://leetcode.com/problems/insert-into-a-binary-search-tree/

public class Problem701 {
    public func run() {
        let solve1 = insertIntoBST(TreeNode([4, 2, 7, 1, 3]), 5)
        print("\(solve1!.values()) -- should be [4, 2, 7, 1, 3, 5]")
        let solve2 = insertIntoBST(TreeNode([40, 20, 60, 10, 30, 50, 70]), 25)
        print("\(solve2!.values()) -- should be [40, 20, 60, 10, 30, 50, 70, 25]")
        let solve3 = insertIntoBST(TreeNode([4, 2, 7, 1, 3, nil, nil, nil, nil, nil, nil]), 5)
        print("\(solve3!.values()) -- should be [4, 2, 7, 1, 3, 5]")
    }

    public func test(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        return insertIntoBST(root, val)
    }

    func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard let node = root else { return TreeNode(val) }
        if val < node.val {
            node.left = insertIntoBST(node.left, val)
        } else {
            node.right = insertIntoBST(node.right, val)
        }

        return node
    }
}
