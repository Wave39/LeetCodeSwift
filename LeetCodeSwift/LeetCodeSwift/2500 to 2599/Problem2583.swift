//
//  Problem2583.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/22/24.
//

// 2583. Kth Largest Sum in a Binary Tree (Medium)
// https://leetcode.com/problems/kth-largest-sum-in-a-binary-tree/

// WOO HOO!!!
// Runtime: 83 ms, Beats 100.00%
// Memory: 35.53 MB, Beats 25.00%

public class Problem2583 {
    public func run() {
        let solve1 = kthLargestLevelSum(TreeNode([5, 8, 9, 2, 1, 3, 7, 4, 6]), 2)
        print("\(solve1) -- should be 13")
        let solve2 = kthLargestLevelSum(TreeNode([1, 2, nil, 3]), 1)
        print("\(solve2) -- should be 3")
        let solve3 = kthLargestLevelSum(TreeNode([411310, 211244, 111674]), 2)
        print("\(solve3) -- should be 322918")
    }

    public func test(_ root: TreeNode?, _ k: Int) -> Int {
        return kthLargestLevelSum(root, k)
    }

    func kthLargestLevelSum(_ root: TreeNode?, _ k: Int) -> Int {
        var nodes = [root]
        var levelSums = [Int]()
        while nodes.count > 0 {
            var levelSum = 0
            var nextNodes = [TreeNode]()
            for node in nodes {
                levelSum += node!.val
                if node?.left != nil {
                    nextNodes.append(node!.left!)
                }

                if node?.right != nil {
                    nextNodes.append(node!.right!)
                }
            }

            levelSums.append(levelSum)
            nodes = nextNodes
        }

        if k > levelSums.count {
            return -1
        }

        levelSums.sort(by: >)
        return levelSums[k - 1]
    }
}
