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
        let a1 = TreeNode(1)
        let a3 = TreeNode(3)
        let a2 = TreeNode(2, a1, a3)
        let solve1 = isValidBST(a2)
        print("\(solve1) -- should be true")
        let b3 = TreeNode(3)
        let b6 = TreeNode(6)
        let b1 = TreeNode(1)
        let b4 = TreeNode(4, b3, b6)
        let b5 = TreeNode(5, b1, b4)
        let solve2 = isValidBST(b5)
        print("\(solve2) -- should be false")
        let c3 = TreeNode(3)
        let c7 = TreeNode(7)
        let c4 = TreeNode(4)
        let c6 = TreeNode(6, c3, c7)
        let c5 = TreeNode(5, c4, c6)
        let solve3 = isValidBST(c5)
        print("\(solve3) -- should be false")
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
