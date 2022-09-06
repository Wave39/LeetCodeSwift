//
//  TreeNodeExtensions.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/6/22.
//

extension TreeNode {
    public func nodeCount() -> Int {
        return 1 + (self.left?.nodeCount() ?? 0) + (self.right?.nodeCount() ?? 0)
    }
}
