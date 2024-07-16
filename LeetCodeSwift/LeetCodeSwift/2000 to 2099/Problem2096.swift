//
//  Problem2096.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/16/24.
//

// 2096. Step-By-Step Directions From a Binary Tree Node to Another (Medium)
// https://leetcode.com/problems/step-by-step-directions-from-a-binary-tree-node-to-another/

public class Problem2096 {
    public func run() {
        let solve1 = getDirections(TreeNode([5, 1, 2, 3, nil, 6, 4]), 3, 6)
        print("\(solve1) -- should be UURL")
        let solve2 = getDirections(TreeNode([2, 1]), 2, 1)
        print("\(solve2) -- should be L")
    }

    public func test(_ root: TreeNode?, _ startValue: Int, _ destValue: Int) -> String {
        return getDirections(root, startValue, destValue)
    }

    func getDirections(_ root: TreeNode?, _ startValue: Int, _ destValue: Int) -> String {
        func getDirectionsString(_ node: TreeNode?, _ value: Int) -> String? {
            guard let node else { return nil }
            if node.val == value { return "" }
            if let leftPath = getDirectionsString(node.left, value) { return "L" + leftPath }
            if let rightPath = getDirectionsString(node.right, value) { return "R" + rightPath }
            return nil
        }

        let rootToStart = getDirectionsString(root, startValue)!
        let rootToDestination = getDirectionsString(root, destValue)!
        let commonPrefix = rootToStart.commonPrefix(with: rootToDestination)
        let prefixLength = commonPrefix.count
        let up = String(Array(rootToStart)[prefixLength...].map { _ in "U" })
        let down = String(Array(rootToDestination)[prefixLength...])
        return up + down
    }
}
