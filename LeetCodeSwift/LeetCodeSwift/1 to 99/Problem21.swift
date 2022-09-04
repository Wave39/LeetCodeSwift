//
//  Problem21.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/4/22.
//

// 21. Merge Two Sorted Lists
// https://leetcode.com/problems/merge-two-sorted-lists/

public class Problem21 {
    public func run() {
        let solve1 = mergeTwoLists(ListNode.arrayToList([1, 2, 4]), ListNode.arrayToList([1, 3, 4]))
        print("\(solve1!.toArray()) -- should be [1, 1, 2, 3, 4, 4]")
        let solve2 = mergeTwoLists(nil, nil)
        print("\(String(describing: solve2)) -- should be nil")
        let solve3 = mergeTwoLists(nil, ListNode.arrayToList([0]))
        print("\(solve3!.toArray()) -- should be [0]")
        let solve4 = mergeTwoLists(ListNode.arrayToList([-10,-10,-9,-4,1,6,6]), ListNode.arrayToList([-7]))
        print("\(solve4!.toArray()) -- should be [-10, -10, -9, -7, -4, 1, 6, 6]")
    }

    public func test(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        return mergeTwoLists(list1, list2)
    }

    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        if list1 == nil && list2 == nil {
            return nil
        } else if list1 == nil {
            return list2
        } else if list2 == nil {
            return list1
        }

        var head: ListNode?
        var pointer1: ListNode?
        var pointer2: ListNode?
        if list1!.val < list2!.val {
            head = list1
            pointer1 = list1
            pointer2 = list2
        } else {
            head = list2
            pointer1 = list2
            pointer2 = list1
        }

        while true {
            if pointer1?.next == nil {
                pointer1!.next = pointer2
                return head
            } else if pointer2 == nil {
                return head
            } else {
                if pointer1!.next!.val > pointer2!.val {
                    let pointer1next = pointer1?.next
                    let pointer2next = pointer2?.next
                    pointer1!.next = pointer2
                    pointer2!.next = pointer1next
                    pointer1 = pointer1!.next
                    pointer2 = pointer2next
                } else {
                    pointer1 = pointer1?.next
                }
            }
        }
    }
}
