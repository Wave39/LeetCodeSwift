//
//  Problem637.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/1/22.
//

// 637. Average of Levels in Binary Tree
// https://leetcode.com/problems/average-of-levels-in-binary-tree/

public class Problem637 {
    public func run() {
        let a9 = TreeNode(9)
        let a15 = TreeNode(15)
        let a7 = TreeNode(7)
        let a20 = TreeNode(20, a15, a7)
        let aRoot = TreeNode(3, a9, a20)
        let solve1 = averageOfLevels(aRoot)
        print("\(solve1) -- should be [3.0, 14.5, 11.0]")

        let b15 = TreeNode(15)
        let b7 = TreeNode(7)
        let b9 = TreeNode(9, b15, b7)
        let b20 = TreeNode(20)
        let bRoot = TreeNode(3, b9, b20)
        let solve2 = averageOfLevels(bRoot)
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
