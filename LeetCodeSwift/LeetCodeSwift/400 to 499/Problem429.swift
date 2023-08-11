//
//  Problem429.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/5/22.
//

// 429. N-ary Tree Level Order Traversal (Medium)
// https://leetcode.com/problems/n-ary-tree-level-order-traversal/

public class Problem429 {
    public func run() {
        let a5 = Node(5)
        let a6 = Node(6)
        let a3 = Node(3)
        a3.children = [ a5, a6 ]
        let a2 = Node(2)
        let a4 = Node(4)
        let aRoot = Node(1)
        aRoot.children = [ a3, a2, a4 ]
        let solve1 = levelOrder(aRoot)
        print("\(solve1) -- should be [[1], [3, 2, 4], [5, 6]]")

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
        let bRoot = Node(1)
        bRoot.children = [ b2, b3, b4, b5 ]
        let solve2 = levelOrder(bRoot)
        print("\(solve2) -- should be [[1], [2, 3, 4, 5], [6, 7, 8, 9, 10], [11, 12, 13], [14]]")

        let solve3 = levelOrder(nil)
        print("\(solve3) -- should be []")
    }

    public func test(_ root: Node?) -> [[Int]] {
        return levelOrder(root)
    }

    func levelOrder(_ root: Node?) -> [[Int]] {
        var retval = [[Int]]()
        guard let root = root else {
            return retval
        }

        var thisLevel = [ root ]
        while !thisLevel.isEmpty {
            var nextLevel = [Node]()
            var levelArray = [Int]()
            for node in thisLevel {
                levelArray.append(node.val)
                nextLevel.append(contentsOf: node.children)
            }

            retval.append(levelArray)
            thisLevel = nextLevel
        }

        return retval
    }
}
