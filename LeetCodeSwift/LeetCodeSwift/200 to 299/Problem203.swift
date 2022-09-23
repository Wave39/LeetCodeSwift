//
//  Problem203.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/23/22.
//

// 203. Remove Linked List Elements
// https://leetcode.com/problems/remove-linked-list-elements/

public class Problem203 {
    public func run() {
        let list1 = ListNode.arrayToList([1, 2, 6, 3, 4, 5, 6])
        let solve1 = removeElements(list1, 6)
        print("\(solve1!.toArray()) -- should be [1, 2, 3, 4, 5]")
        let solve2 = removeElements(nil, 1)
        print("\(String(describing: solve2)) -- should be nil")
        let list3 = ListNode.arrayToList([7, 7, 7, 7])
        let solve3 = removeElements(list3, 7)
        print("\(String(describing: solve3)) -- should be nil")
    }

    public func test(_ head: ListNode?, _ val: Int) -> ListNode? {
        return removeElements(head, val)
    }

    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        if head == nil {
            return nil
        }

        var pointer = head
        while pointer?.val == val {
            pointer = pointer?.next
        }

        let newHead = pointer

        var previousPointer: ListNode?
        while pointer != nil {
            if pointer?.val == val {
                previousPointer?.next = pointer?.next
            } else {
                previousPointer = pointer
            }

            pointer = pointer?.next
        }

        return newHead
    }
}
