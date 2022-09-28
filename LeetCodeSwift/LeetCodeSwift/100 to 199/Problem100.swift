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
        let left1 = TreeNode([1, 2, 3])
        let right1 = TreeNode([1, 2, 3])
        let solve1 = isSameTree(left1, right1)
        print("\(solve1) -- should be true")

        let left2 = TreeNode([1, 2])
        let right2 = TreeNode([1, nil, 2])
        let solve2 = isSameTree(left2, right2)
        print("\(solve2) -- should be false")

        let left3 = TreeNode([1, 2, 1])
        let right3 = TreeNode([1, 1, 2])
        let solve3 = isSameTree(left3, right3)
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
