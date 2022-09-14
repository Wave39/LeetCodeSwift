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

    public static func nodeFromArray(_ array: [Int?]) -> TreeNode? {
        var values = array
        guard !values.isEmpty, let head = values.removeFirst() else { return nil }

        let retval = TreeNode()
        retval.val = head; retval.left = nil; retval.right = nil

        var queue = [retval]
        while !queue.isEmpty {
            let node = queue.removeFirst()
            if !values.isEmpty, let val = values.removeFirst() {
                node.left = TreeNode(val)
                queue.append(node.left!)
            }
            if !values.isEmpty, let val = values.removeFirst() {
                node.right = TreeNode(val)
                queue.append(node.right!)
            }
        }

        return retval
    }
}
