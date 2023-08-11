//
//  Problem101.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/27/22.
//

// 101. Symmetric Tree (Easy)
// https://leetcode.com/problems/symmetric-tree/

public class Problem101 {
    public func run() {
        let solve1 = isSymmetric(TreeNode([1, 2, 2, 3, 4, 4, 3]))
        print("\(solve1) -- should be true")
        let solve2 = isSymmetric(TreeNode([1, 2, 2, nil, 3, nil, 3]))
        print("\(solve2) -- should be false")
        let solve3 = isSymmetric(TreeNode([1, 0]))
        print("\(solve3) -- should be false")
    }

    public func test(_ root: TreeNode?) -> Bool {
        return isSymmetric(root)
    }

    func isSymmetric(_ root: TreeNode?) -> Bool {
        var leaves = Set<String>()

        func processNode(_ node: TreeNode, _ previousPath: String) {
            let newPath = previousPath + "\(node.val)"
            if node.left == nil && node.right == nil {
                leaves.insert(newPath)
            } else {
                if let left = node.left {
                    processNode(left, newPath + "L")
                }

                if let right = node.right {
                    processNode(right, newPath + "R")
                }
            }
        }

        guard let root = root else {
            return true
        }

        processNode(root, "")

        while !leaves.isEmpty {
            let leaf = leaves.first!
            var mirrorLeaf = leaf.replacingOccurrences(of: "L", with: "X")
            mirrorLeaf = mirrorLeaf.replacingOccurrences(of: "R", with: "L")
            mirrorLeaf = mirrorLeaf.replacingOccurrences(of: "X", with: "R")
            if !leaves.contains(mirrorLeaf) {
                return false
            } else {
                leaves.remove(leaf)
                leaves.remove(mirrorLeaf)
            }
        }

        return true
    }
}
