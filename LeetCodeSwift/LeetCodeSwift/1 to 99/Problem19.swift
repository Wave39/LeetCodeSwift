//
//  Problem19.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/27/22.
//

// 19. Remove Nth Node From End of List (Medium)
// https://leetcode.com/problems/remove-nth-node-from-end-of-list/

public class Problem19 {
    public func run() {
        let solve1 = removeNthFromEnd(ListNode.arrayToList([1, 2, 3, 4, 5]), 2)
        print("\(solve1!.toArray()) -- should be [1, 2, 3, 5]")
        let solve2 = removeNthFromEnd(ListNode.arrayToList([1]), 1)
        print("\(String(describing: solve2)) -- should be nil")
        let solve3 = removeNthFromEnd(ListNode.arrayToList([1, 2]), 1)
        print("\(solve3!.toArray()) -- should be [1]")
        let solve4 = removeNthFromEnd(ListNode.arrayToList([1, 2]), 2)
        print("\(solve4!.toArray()) -- should be [2]")
    }

    public func test(_ head: ListNode?, _ n: Int) -> ListNode? {
        return removeNthFromEnd(head, n)
    }

    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        if n == 1 && head?.next == nil {
            return nil
        }

        var pointer1 = head
        var pointer2 = head
        for _ in 1...n {
            pointer2 = pointer2?.next
        }

        if pointer2 == nil {
            return head?.next
        }

        while pointer2?.next != nil {
            pointer1 = pointer1?.next
            pointer2 = pointer2?.next
        }

        pointer1?.next = pointer1?.next?.next

        return head
    }
}
