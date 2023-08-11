//
//  Problem637.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/1/22.
//

// 637. Average of Levels in Binary Tree (Easy)
// https://leetcode.com/problems/average-of-levels-in-binary-tree/

public class Problem637 {
    public func run() {
        let solve1 = averageOfLevels(TreeNode([3, 9, 20, nil, nil, 15, 7]))
        print("\(solve1) -- should be [3.0, 14.5, 11.0]")
        let solve2 = averageOfLevels(TreeNode([3, 9, 20, 15, 7]))
        print("\(solve2) -- should be [3.0, 14.5, 11.0]")
    }

    public func test(_ root: TreeNode?) -> [Double] {
        return averageOfLevels(root)
    }

    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        var nextLevel = [root]
        var levelValues = [[Int]]()
        while !nextLevel.isEmpty {
            var intArray = [Int]()
            let thisLevel = nextLevel
            nextLevel = []
            for node in thisLevel {
                intArray.append(node?.val ?? -1)
                if let nodeLeft = node!.left {
                    nextLevel.append(nodeLeft)
                }

                if let nodeRight = node!.right {
                    nextLevel.append(nodeRight)
                }
            }

            levelValues.append(intArray)
        }

        var retval = [Double]()
        for level in levelValues {
            let sum = level.reduce(0, +)
            let length = level.count
            retval.append(Double(sum) / Double(length))
        }

        return retval
    }
}
