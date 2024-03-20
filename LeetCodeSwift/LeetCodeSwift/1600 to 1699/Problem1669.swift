//
//  Problem1669.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 3/20/24.
//

// 1669. Merge In Between Linked Lists (Medium)
// https://leetcode.com/problems/merge-in-between-linked-lists/

public class Problem1669 {
    public func run() {
        let solve1 = mergeInBetween(ListNode.arrayToList([10, 1, 13, 6, 9, 5]), 3, 4, ListNode.arrayToList([1000000, 1000001, 1000002]))
        print("\(solve1!.toArray()) -- should be [10, 1, 13, 1000000, 1000001, 1000002, 5]")
        let solve2 = mergeInBetween(ListNode.arrayToList([0, 1, 2, 3, 4, 5, 6]), 2, 5, ListNode.arrayToList([1000000, 1000001, 1000002, 1000003, 1000004]))
        print("\(solve2!.toArray()) -- should be [0, 1, 1000000, 1000001, 1000002, 1000003, 1000004, 6]")
    }

    public func test(_ list1: ListNode?, _ a: Int, _ b: Int, _ list2: ListNode?) -> ListNode? {
        return mergeInBetween(list1, a, b, list2)
    }

    func mergeInBetween(_ list1: ListNode?, _ a: Int, _ b: Int, _ list2: ListNode?) -> ListNode? {
        var list1Temp = list1
        for _ in 0..<b {
            list1Temp = list1Temp?.next
        }

        let list1SavedNode = list1Temp?.next
        list1Temp?.next = nil

        list1Temp = list1
        for _ in 0..<a - 1 {
            list1Temp = list1Temp?.next
        }

        list1Temp?.next = list2

        var list2Temp = list2
        while list2Temp?.next != nil {
            list2Temp = list2Temp?.next
        }

        list2Temp?.next = list1SavedNode

        return list1
    }
}
