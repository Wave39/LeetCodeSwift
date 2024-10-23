//
//  Problem2641.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/23/24.
//

// 2641. Cousins in Binary Tree II (Medium)
// https://leetcode.com/problems/cousins-in-binary-tree-ii/

// https://leetcode.com/problems/cousins-in-binary-tree-ii/solutions/5955036/swift-bfs/

public class Problem2641 {
    public func run() {
        let solve1 = replaceValueInTree(TreeNode([5, 4, 9, 1, 10, nil, 7]))
        print("\(solve1!.values()) -- should be [0, 0, 0, 7, 7, 11]")
        let solve2 = replaceValueInTree(TreeNode([3, 1, 2]))
        print("\(solve2!.values()) -- should be [0, 0, 0]")
    }

    public func test(_ root: TreeNode?) -> TreeNode? {
        return replaceValueInTree(root)
    }

    func replaceValueInTree(_ root: TreeNode?) -> TreeNode? {
        var bfsRow = [root].compactMap{$0}
        root?.val = 0

        while !bfsRow.isEmpty {
            let nodeChildrenSums = bfsRow.map{ [ $0.left, $0.right ].compactMap { $0?.val ?? 0 }.reduce(0, +) }
            let levelSum = nodeChildrenSums.reduce(0, +)
            for (node, nodeChildrenSum) in zip(bfsRow, nodeChildrenSums) {
                let cousinsSum = levelSum - nodeChildrenSum
                node.left?.val = cousinsSum
                node.right?.val = cousinsSum
            }

            bfsRow = bfsRow.flatMap { [$0.left, $0.right].compactMap { $0 } }
        }

        return root
    }
}
