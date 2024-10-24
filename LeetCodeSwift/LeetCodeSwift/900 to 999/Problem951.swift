//
//  Problem951.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/24/24.
//

// 951. Flip Equivalent Binary Trees (Medium)
// https://leetcode.com/problems/flip-equivalent-binary-trees/

// https://leetcode.com/problems/flip-equivalent-binary-trees/solutions/5959918/swift-1liner/

public class Problem951 {
    public func run() {
        let solve1 = flipEquiv(TreeNode([1, 2, 3, 4, 5, 6, nil, nil, nil, 7, 8]), TreeNode([1, 3, 2, nil, 6, 4, 5, nil, nil, nil, nil, 8, 7]))
        print("\(solve1) -- should be true")
        let solve2 = flipEquiv(TreeNode([]), TreeNode([]))
        print("\(solve2) -- should be true")
        let solve3 = flipEquiv(TreeNode([]), TreeNode([1]))
        print("\(solve3) -- should be false")
    }

    public func test(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        return flipEquiv(root1, root2)
    }

    func flipEquiv(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        root1 === root2 ||
        (
            root1?.val == root2?.val &&
            (
                flipEquiv(root1?.left, root2?.left) && flipEquiv(root1?.right, root2?.right) ||
                flipEquiv(root1?.left, root2?.right) && flipEquiv(root1?.right, root2?.left)
            )
        )
    }
}
