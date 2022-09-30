//
//  Problem653.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/30/22.
//

// 653. Two Sum IV - Input is a BST
// https://leetcode.com/problems/two-sum-iv-input-is-a-bst/

// https://leetcode.com/problems/two-sum-iv-input-is-a-bst/discuss/368435/Swift

public class Problem653 {
    public func run() {
        let solve1 = findTarget(TreeNode([5, 3, 6, 2, 4, nil, 7]), 9)
        print("\(solve1) -- should be true")
        let solve2 = findTarget(TreeNode([5, 3, 6, 2, 4, nil, 7]), 28)
        print("\(solve2) -- should be false")
        let solve3 = findTarget(TreeNode([2, 0, 3, -4, 1]), -1)
        print("\(solve3) -- should be true")
        let solve4 = findTarget(TreeNode([2, nil, 3]), 6)
        print("\(solve4) -- should be false")
    }

    public func test(_ root: TreeNode?, _ k: Int) -> Bool {
        return findTarget(root, k)
    }

    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
        var nums: [Int] = []
        var cache: [Int: Bool] = [:]

        run(root, nums: &nums)

        for num in nums {
            if cache[k - num] != nil {
                return true
            }
            cache[num] = true
        }

        return false
    }

    func run(_ tree: TreeNode?, nums: inout [Int]) {
        guard let tree = tree else { return }

        nums.append(tree.val)
        run(tree.left, nums: &nums)
        run(tree.right, nums: &nums)
    }
}

