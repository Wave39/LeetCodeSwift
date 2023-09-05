//
//  Problem138.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/5/23.
//

// 138. Copy List with Random Pointer (Medium)
// https://leetcode.com/problems/copy-list-with-random-pointer/

// I was having trouble wrapping my head around the random pointer aspect of this problem.
// So I just borrowed a solution from:
// https://leetcode.com/problems/copy-list-with-random-pointer/solutions/1739675/solution-swift-copy-list-with-random-pointer/

public class Problem138 {
    public func run() {
        let list1 = NodeWithRandom.getList([[7, nil], [13, 0], [11, 4], [10, 2], [1, 0]])
        let solve1 = copyRandomList(list1.first)
        print("\(solve1!.val) -- should be 7")
        let list2 = NodeWithRandom.getList([[1, 1], [2, 1]])
        let solve2 = copyRandomList(list2.first)
        print("\(solve2!.val) -- should be 1")
        let list3 = NodeWithRandom.getList([[3, nil], [3, 0], [3, nil]])
        let solve3 = copyRandomList(list3.first)
        print("\(solve3!.val) -- should be 3")
    }

    public func test(_ head: NodeWithRandom?) -> NodeWithRandom? {
        return copyRandomList(head)
    }

    func copyRandomList(_ head: NodeWithRandom?) -> NodeWithRandom? {
        if head == nil { return nil }

        var node = head, idx = 0

        while let nod = node {
            nod.val = (nod.val + 10000) | (idx << 32)
            node = nod.next
            idx += 1
        }

        var nodes: [NodeWithRandom?] = []
        node = head

        while let nod = node {
            let new = NodeWithRandom((nod.val & Int(UInt32.max)) - 10000)
            if !nodes.isEmpty { nodes[nodes.count - 1]?.next = new }
            nodes.append(new)
            node = nod.next
        }

        node = head
        idx = 0

        while let nod = node {
            if let rand = nod.random {
                nodes[idx]?.random = nodes[rand.val >> 32]
            }
            node = node?.next
            idx += 1
        }
        return nodes[0]
    }
}
