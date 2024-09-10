//
//  Problem2807.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/10/24.
//

// 2807. Insert Greatest Common Divisors in Linked List (Medium)
// https://leetcode.com/problems/insert-greatest-common-divisors-in-linked-list/

import Foundation

public class Problem2807 {
    public func run() {
        let solve1 = insertGreatestCommonDivisors(ListNode.arrayToList([18, 6, 10, 3]))
        print("\(solve1!.toArray()) -- should be [18, 6, 6, 2, 10, 1, 3]")
        let solve2 = insertGreatestCommonDivisors(ListNode.arrayToList([7]))
        print("\(solve2!.toArray()) -- should be [7]")
    }

    public func test(_ head: ListNode?) -> ListNode? {
        return insertGreatestCommonDivisors(head)
    }

    func gcd(_ a: Int, _ b: Int) -> Int {
        let r = a % b
        if r != 0 {
            return gcd(b, r)
        } else {
            return b
        }
    }

    func insertGreatestCommonDivisors(_ head: ListNode?) -> ListNode? {
        var node1 = head
        var node2 = head?.next
        while node2 != nil {
            let gcd = gcd(node1!.val, node2!.val)
            let newNode = ListNode(gcd)
            node1?.next = newNode
            newNode.next = node2
            node1 = node2
            node2 = node2!.next
        }

        return head
    }
}
