//
//  Problem1448.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/1/22.
//

// 1448. Count Good Nodes in Binary Tree (Medium)
// https://leetcode.com/problems/count-good-nodes-in-binary-tree/

public class Problem1448 {
    public func run() {
        let solve1 = goodNodes(TreeNode([3, 1, 4, 3, nil, 1, 5]))
        print("\(solve1) -- should be 4")
        let solve2 = goodNodes(TreeNode([3, 3, nil, 4, 2]))
        print("\(solve2) -- should be 3")
        let solve3 = goodNodes(TreeNode([1]))
        print("\(solve3) -- should be 1")
    }

    public func test(_ root: TreeNode?) -> Int {
        return goodNodes(root)
    }

    func goodNodes(_ root: TreeNode?) -> Int {
        var goodNodes = 0

        func process(_ node: TreeNode, _ previousValues: [Int]) {
            let ctr = previousValues.filter { $0 > node.val }.count
            if ctr == 0 {
                goodNodes += 1
            }

            var newValues = previousValues
            newValues.append(node.val)
            if let left = node.left {
                process(left, newValues)
            }

            if let right = node.right {
                process(right, newValues)
            }
        }

        process(root!, [])

        return goodNodes
    }
}
