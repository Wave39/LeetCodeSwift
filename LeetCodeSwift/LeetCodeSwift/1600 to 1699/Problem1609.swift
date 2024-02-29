//
//  Problem1609.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 2/29/24.
//

// 1609. Even Odd Tree (Medium)
// https://leetcode.com/problems/even-odd-tree/

public class Problem1609 {
    public func run() {
        let solve1 = isEvenOddTree(TreeNode([1, 10, 4, 3, nil, 7, 9, 12, 8, 6, nil, nil, 2]))
        print("\(solve1) -- should be true")
        let solve2 = isEvenOddTree(TreeNode([5, 4, 2, 3, 3, 7]))
        print("\(solve2) -- should be false")
        let solve3 = isEvenOddTree(TreeNode([5, 9, 1, 3, 5, 7]))
        print("\(solve3) -- should be false")
    }

    public func test(_ root: TreeNode?) -> Bool {
        return isEvenOddTree(root)
    }

    func isEvenOddTree(_ root: TreeNode?) -> Bool {
        var nodes = [root]
        var remainder = 1
        while nodes.count > 0 {
            var nextNodes = [TreeNode]()
            for idx in 0..<nodes.count {
                if nodes[idx]!.val % 2 != remainder {
                    return false
                }

                if idx > 0 {
                    if remainder == 1 {
                        if nodes[idx - 1]!.val >= nodes[idx]!.val {
                            return false
                        }
                    } else {
                        if nodes[idx - 1]!.val <= nodes[idx]!.val {
                            return false
                        }
                   }
                }

                if nodes[idx]!.left != nil {
                    nextNodes.append(nodes[idx]!.left!)
                }

                if nodes[idx]!.right != nil {
                    nextNodes.append(nodes[idx]!.right!)
                }
            }

            nodes = nextNodes
            remainder = 1 - remainder
        }

        return true
    }
}
