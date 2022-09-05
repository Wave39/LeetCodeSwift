//
//  Problem876.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/5/22.
//

// 876. Middle of the Linked List
// https://leetcode.com/problems/middle-of-the-linked-list/

public class Problem876 {
    public func run() {
        let solve1 = middleNode(ListNode.arrayToList([1, 2, 3, 4, 5]))
        print("\(solve1!.toArray()) -- should be [3, 4, 5]")
        let solve2 = middleNode(ListNode.arrayToList([1, 2, 3, 4, 5, 6]))
        print("\(solve2!.toArray()) -- should be [4, 5, 6]")
    }

    public func test(_ head: ListNode?) -> ListNode? {
        return middleNode(head)
    }

    func middleNode(_ head: ListNode?) -> ListNode? {
        var middlePointer = head
        var currentPointer = head
        var count = 1
        while currentPointer?.next != nil {
            currentPointer = currentPointer?.next
            count += 1
            if count % 2 == 1 {
                middlePointer = middlePointer?.next
            }
        }

        if count % 2 == 0 {
            middlePointer = middlePointer?.next
        }

        return middlePointer
    }
}
