//
//  Problem1448.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/1/22.
//

// 1448. Count Good Nodes in Binary Tree
// https://leetcode.com/problems/count-good-nodes-in-binary-tree/

public class Problem1448 {
    public func run() {
        let a3_3 = TreeNode(3)
        let a2_1 = TreeNode(1, a3_3, nil)
        let a3_1 = TreeNode(1)
        let a3_5 = TreeNode(5)
        let a2_4 = TreeNode(4, a3_1, a3_5)
        let aRoot = TreeNode(3, a2_1, a2_4)
        let solve1 = goodNodes(aRoot)
        print("\(solve1) -- should be 4")
        let b3_4 = TreeNode(4)
        let b3_2 = TreeNode(2)
        let b2_3 = TreeNode(3, b3_4, b3_2)
        let bRoot = TreeNode(3, b2_3, nil)
        let solve2 = goodNodes(bRoot)
        print("\(solve2) -- should be 3")
        let cRoot = TreeNode(1)
        let solve3 = goodNodes(cRoot)
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
