//
//  Problem1325.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 5/17/24.
//

// 1325. Delete Leaves With a Given Value (Medium)
// https://leetcode.com/problems/delete-leaves-with-a-given-value/

// https://leetcode.com/problems/delete-leaves-with-a-given-value/solutions/501892/swift-dfs-40-52-ms/

public class Problem1325 {
    public func run() {
        let solve1 = removeLeafNodes(TreeNode([1, 2, 3, 2, nil, 2, 4]), 2)
        print("\(solve1!.values()) -- should be [1, 3, 4]")
        let solve2 = removeLeafNodes(TreeNode([1, 3, 3, 3, 2]), 3)
        print("\(solve2!.values()) -- should be [1, 3, 2]")
        let solve3 = removeLeafNodes(TreeNode([1, 2, nil, 2, nil, 2]), 2)
        print("\(solve3!.values()) -- should be [1]")
    }

    public func test(_ root: TreeNode?, _ target: Int) -> TreeNode? {
        return removeLeafNodes(root, target)
    }

    func removeLeafNodes(_ root: TreeNode?, _ target: Int) -> TreeNode? {
        guard let root = root else { return nil }

        root.left = removeLeafNodes(root.left, target)
        root.right = removeLeafNodes(root.right, target)

        if (root.val == target && root.left == nil && root.right == nil) {
            return nil
        }

        return root
    }
}
