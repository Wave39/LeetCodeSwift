//
//  Problem98.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/12/22.
//

// 98. Validate Binary Search Tree
// https://leetcode.com/problems/validate-binary-search-tree/

public class Problem98 {
    public func run() {
        let solve1 = isValidBST(TreeNode.nodeFromArray([2, 1, 3]))
        print("\(solve1) -- should be true")
        let solve2 = isValidBST(TreeNode.nodeFromArray([5, 1, 4, nil, nil, 3, 6]))
        print("\(solve2) -- should be false")
    }

    public func test(_ root: TreeNode?) -> Bool {
        return isValidBST(root)
    }

    func isValidBST(_ root: TreeNode?) -> Bool {
        func getMinValue(_ node: TreeNode) -> Int {
            var retval = node.val
            if let left = node.left {
                let leftVal = getMinValue(left)
                if leftVal < retval {
                    retval = leftVal
                }
            }

            if let right = node.right {
                let rightVal = getMinValue(right)
                if rightVal < retval {
                    retval = rightVal
                }
            }

            return retval
        }

        func getMaxValue(_ node: TreeNode) -> Int {
            var retval = node.val
            if let left = node.left {
                let leftVal = getMaxValue(left)
                if leftVal > retval {
                    retval = leftVal
                }
            }

            if let right = node.right {
                let rightVal = getMaxValue(right)
                if rightVal > retval {
                    retval = rightVal
                }
            }

            return retval
        }

        func checkTree(_ node: TreeNode) -> Bool {
            if let left = node.left {
                if left.val >= node.val {
                    return false
                }

                if !checkTree(left) {
                    return false
                }

                if getMaxValue(left) >= node.val {
                    return false
                }
            }

            if let right = node.right {
                if right.val <= node.val {
                    return false
                }

                if !checkTree(right) {
                    return false
                }

                if getMinValue(right) <= node.val {
                    return false
                }
            }

            return true
        }

        return checkTree(root!)
    }
}
