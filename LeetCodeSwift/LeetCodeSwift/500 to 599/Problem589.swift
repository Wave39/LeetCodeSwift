//
//  Problem589.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/6/22.
//

// 589. N-ary Tree Preorder Traversal
// https://leetcode.com/problems/n-ary-tree-preorder-traversal/

public class Problem589 {
    public func run() {
        let a5 = Node(5)
        let a6 = Node(6)
        let a3 = Node(3)
        a3.children = [ a5, a6 ]
        let a2 = Node(2)
        let a4 = Node(4)
        let a1 = Node(1)
        a1.children = [ a3, a2, a4 ]
        let solve1 = preorder(a1)
        print("\(solve1) -- should be [1, 3, 5, 6, 2, 4]")

        let b14 = Node(14)
        let b11 = Node(11)
        b11.children = [ b14 ]
        let b12 = Node(12)
        let b13 = Node(13)
        let b6 = Node(6)
        let b7 = Node(7)
        b7.children = [ b11 ]
        let b8 = Node(8)
        b8.children = [ b12 ]
        let b9 = Node(9)
        b9.children = [ b13 ]
        let b10 = Node(10)
        let b2 = Node(2)
        let b3 = Node(3)
        b3.children = [ b6, b7 ]
        let b4 = Node(4)
        b4.children = [ b8 ]
        let b5 = Node(5)
        b5.children = [ b9, b10 ]
        let b1 = Node(1)
        b1.children = [ b2, b3, b4, b5 ]
        let solve2 = preorder(b1)
        print("\(solve2) -- should be [1, 2, 3, 6, 7, 11, 14, 4, 8, 12, 5, 9, 13, 10]")
    }

    public func test(_ root: Node?) -> [Int] {
        return preorder(root)
    }

    func preorder(_ root: Node?) -> [Int] {
        if root == nil {
            return []
        }

        var retval = [Int]()

        func processNode(_ node: Node) {
            retval.append(node.val)
            for child in node.children {
                processNode(child)
            }
        }

        processNode(root!)

        return retval
    }
}
