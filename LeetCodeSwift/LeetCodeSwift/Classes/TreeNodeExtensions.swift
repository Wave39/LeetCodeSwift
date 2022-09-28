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

    public convenience init(_ array: [Int?]) {
        self.init()

        var values = array
        guard !values.isEmpty, let head = values.removeFirst() else { return }

        self.val = head; self.left = nil; self.right = nil

        var queue: [TreeNode] = [self]
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
    }

    public func values() -> [Int] {
        var retval = [Int]()
        var queue = [self]
        while !queue.isEmpty {
            let node = queue.removeFirst()
            retval.append(node.val)
            if let left = node.left {
                queue.append(left)
            }

            if let right = node.right {
                queue.append(right)
            }
        }

        return retval
    }
}
