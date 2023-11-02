//
//  Problem2265.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/2/23.
//

// 2265. Count Nodes Equal to Average of Subtree (Medium)
// https://leetcode.com/problems/count-nodes-equal-to-average-of-subtree/

public class Problem2265 {
    public func run() {
        let solve1 = averageOfSubtree(TreeNode([4, 8, 5, 0, 1, nil, 6]))
        print("\(solve1) -- should be 5")
        let solve2 = averageOfSubtree(TreeNode([1]))
        print("\(solve2) -- should be 1")
    }

    public func test(_ root: TreeNode?) -> Int {
        return averageOfSubtree(root)
    }

    func averageOfSubtree(_ root: TreeNode?) -> Int {
        var retval = 0

        func getNodeStats(_ node: TreeNode) -> (Int, Int) {
            var count = 1
            var sum = node.val

            if let left = node.left {
                let stats = getNodeStats(left)
                count += stats.0
                sum += stats.1
            }

            if let right = node.right {
                let stats = getNodeStats(right)
                count += stats.0
                sum += stats.1
            }

            return (count, sum)
        }

        func walkNode(_ node: TreeNode) {
            let stats = getNodeStats(node)
            if node.val == Int(stats.1 / stats.0) {
                retval += 1
            }

            if let left = node.left {
                walkNode(left)
            }

            if let right = node.right {
                walkNode(right)
            }
        }

        guard let root = root else {
            return -1
        }

        walkNode(root)

        return retval
    }
}
