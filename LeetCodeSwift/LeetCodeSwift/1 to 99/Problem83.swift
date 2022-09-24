//
//  Problem83.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/23/22.
//

// 83. Remove Duplicates from Sorted List
// https://leetcode.com/problems/remove-duplicates-from-sorted-list/

public class Problem83 {
    public func run() {
        let solve1 = deleteDuplicates(ListNode.arrayToList([1, 1, 2]))
        print("\(solve1!.toArray()) -- should be [1, 2]")
        let solve2 = deleteDuplicates(ListNode.arrayToList([1, 1, 2, 3, 3]))
        print("\(solve2!.toArray()) -- should be [1, 2, 3]")
        let solve3 = deleteDuplicates(nil)
        print("\(String(describing: solve3)) -- should be nil")
    }

    public func test(_ head: ListNode?) -> ListNode? {
        return deleteDuplicates(head)
    }

    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var pointer = head
        while pointer != nil {
            if pointer?.val == pointer?.next?.val {
                pointer?.next = pointer?.next?.next
            } else {
                pointer = pointer?.next
            }
        }

        return head
    }
}
