//
//  Problem206.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/4/22.
//

// 206. Reverse Linked List
// https://leetcode.com/problems/reverse-linked-list/

public class Problem206 {
    public func run() {
        let solve1 = reverseList(ListNode.arrayToList([1, 2, 3, 4, 5]))
        print("\(solve1!.toArray()) -- should be [5, 4, 3, 2, 1]")
        let solve2 = reverseList(ListNode.arrayToList([1, 2]))
        print("\(solve2!.toArray()) -- should be [2, 1]")
        let solve3 = reverseList(nil)
        print("\(String(describing: solve3)) -- should be nil")
    }

    public func test(_ head: ListNode?) -> ListNode? {
        return reverseList(head)
    }

    func reverseList(_ head: ListNode?) -> ListNode? {
        guard let head = head else {
            return nil
        }

        var newHead = ListNode(head.val)
        var pointer = head.next
        while pointer != nil {
            let t = ListNode(pointer!.val, newHead)
            newHead = t
            pointer = pointer?.next
        }

        return newHead
    }
}
