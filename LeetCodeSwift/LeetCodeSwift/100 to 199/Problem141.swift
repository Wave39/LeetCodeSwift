//
//  Problem141.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/23/22.
//

// 141. Linked List Cycle
// https://leetcode.com/problems/linked-list-cycle/

public class Problem141 {
    public func run() {
        let list1 = ListNode.arrayToList([3, 2, 0, -4])
        let tail1 = list1.tail()
        let node1 = list1.nodeAtIndex(1)
        tail1.next = node1
        let solve1 = hasCycle(list1)
        print("\(solve1) -- should be true")

        let list2 = ListNode.arrayToList([1, 2])
        let tail2 = list2.tail()
        tail2.next = list2
        let solve2 = hasCycle(list2)
        print("\(solve2) -- should be true")

        let list3 = ListNode.arrayToList([1])
        let solve3 = hasCycle(list3)
        print("\(solve3) -- should be false")
    }

    public func test(_ head: ListNode?) -> Bool {
        return hasCycle(head)
    }

    func hasCycle(_ head: ListNode?) -> Bool {
        guard let head = head else {
            return false
        }

        var pointer = head
        var nodeArray = [ListNode]()
        while pointer.next != nil {
            let match = nodeArray.filter { $0 === pointer }.first
            if match != nil {
                return true
            }

            nodeArray.append(pointer)
            pointer = pointer.next!
        }

        return false
    }
}
