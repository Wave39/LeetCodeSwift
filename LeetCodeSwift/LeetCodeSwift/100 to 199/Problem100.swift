//
//  Problem100.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/24/22.
//

// 100. Same Tree
// https://leetcode.com/problems/same-tree/

public class Problem100 {
    public func run() {
        let left1_3 = TreeNode(3)
        let left1_2 = TreeNode(2)
        let left1_root = TreeNode(1, left1_2, left1_3)
        let right1_3 = TreeNode(3)
        let right1_2 = TreeNode(2)
        let right1_root = TreeNode(1, right1_2, right1_3)
        let solve1 = isSameTree(left1_root, right1_root)
        print("\(solve1) -- should be true")

        let left2_2 = TreeNode(2)
        let left2_root = TreeNode(1, left2_2, nil)
        let right2_2 = TreeNode(2)
        let right2_root = TreeNode(2, nil, right2_2)
        let solve2 = isSameTree(left2_root, right2_root)
        print("\(solve2) -- should be false")

        let left3_2 = TreeNode(2)
        let left3_1 = TreeNode(1)
        let left3_root = TreeNode(1, left3_2, left3_1)
        let right3_2 = TreeNode(2)
        let right3_1 = TreeNode(1)
        let right3_root = TreeNode(1, right3_1, right3_2)
        let solve3 = isSameTree(left3_root, right3_root)
        print("\(solve3) -- should be false")
    }

    public func test(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        return isSameTree(p, q)
    }

    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        } else if p == nil || q == nil {
            return false
        } else {
            if p!.val != q!.val {
                return false
            } else {
                return isSameTree(p!.left, q!.left) && isSameTree(p!.right, q!.right)
            }
        }
    }
}
