//
//  Problem515.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/24/23.
//

// 515. Find Largest Value in Each Tree Row (Medium)
// https://leetcode.com/problems/find-largest-value-in-each-tree-row/

public class Problem515 {
    public func run() {
        let root1 = TreeNode([1, 3, 2, 5, 3, nil, 9])
        let solve1 = largestValues(root1)
        print("\(solve1) -- should be [1, 3, 9]")
        let root2 = TreeNode([1, 2, 3])
        let solve2 = largestValues(root2)
        print("\(solve2) -- should be [1, 3]")
    }

    public func test(_ root: TreeNode?) -> [Int] {
        return largestValues(root)
    }

    func largestValues(_ root: TreeNode?) -> [Int] {
        guard let root = root else {
            return []
        }

        var retval = [Int]()

        func walkThroughNode(_ node: TreeNode, _ level: Int) {
            if level > retval.count {
                retval.append(node.val)
            } else {
                if node.val > retval[level - 1] {
                    retval[level - 1] = node.val
                }
            }

            if let left = node.left {
                walkThroughNode(left, level + 1)
            }

            if let right = node.right {
                walkThroughNode(right, level + 1)
            }
        }

        walkThroughNode(root, 1)

        return retval
    }
}

