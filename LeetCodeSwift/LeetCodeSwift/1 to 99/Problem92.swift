//
//  Problem92.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/15/23.
//

// 92. Reverse Linked List II (Medium)
// https://leetcode.com/problems/reverse-linked-list-ii/

public class Problem92 {
    public func run() {
        let list1 = ListNode.arrayToList([1, 2, 3, 4, 5])
        let solve1 = reverseBetween(list1, 2, 4)
        print("\(solve1!.toArray()) -- should be [1, 4, 3, 2, 5]")
        let list2 = ListNode.arrayToList([5])
        let solve2 = reverseBetween(list2, 1, 1)
        print("\(solve2!.toArray()) -- should be [5]")
        let list3 = ListNode.arrayToList([3, 5])
        let solve3 = reverseBetween(list3, 1, 2)
        print("\(solve3!.toArray()) -- should be [5, 3]")
    }

    public func test(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        return reverseBetween(head, left, right)
    }

    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        var head = head
        var leftNode: ListNode? = nil
        var rightNode: ListNode? = nil
        var elements = [ListNode]()

        if left == right {
            return head
        }

        var theNode = head
        var nodeIndex = 1
        repeat {
            if nodeIndex >= left && nodeIndex <= right {
                elements.append(theNode!)
            }

            if nodeIndex < left {
                leftNode = theNode
            }

            if nodeIndex > right && rightNode == nil {
                rightNode = theNode
            }

            theNode = theNode?.next
            nodeIndex += 1
        } while theNode != nil

        if elements.isEmpty {
            return head
        }

        elements = elements.reversed()

        if leftNode != nil {
            leftNode!.next = elements.first!
        } else {
            head = elements.first!
        }

        for idx in 0..<elements.count - 1 {
            elements[idx].next = elements[idx + 1]
        }

        elements[elements.count - 1].next = rightNode

        return head
    }
}
