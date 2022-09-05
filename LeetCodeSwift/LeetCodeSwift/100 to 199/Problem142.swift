//
//  Problem142.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/5/22.
//

// 142. Linked List Cycle II
// https://leetcode.com/problems/linked-list-cycle-ii/

public class Problem142 {
    public func run() {
        let list1 = ListNode.arrayToList([3, 2, 0, -4])
        let tail1 = list1.tail()
        let node1 = list1.nodeAtIndex(1)
        tail1.next = node1
        let solve1 = detectCycle(list1)
        print("\(solve1!.val) -- should be 2")

        let list2 = ListNode.arrayToList([1, 2])
        let tail2 = list2.tail()
        tail2.next = list2
        let solve2 = detectCycle(list2)
        print("\(solve2!.val) -- should be 1")

        let list3 = ListNode.arrayToList([1])
        let solve3 = detectCycle(list3)
        print("\(String(describing: solve3)) -- should be nil")
    }

    public func test(_ head: ListNode?) -> ListNode? {
        return detectCycle(head)
    }

    func detectCycle(_ head: ListNode?) -> ListNode? {
        guard let head = head else {
            return nil
        }

        var pos = 0
        var pointer = head
        var nodeArray = [ListNode]()
        while pointer.next != nil {
            let match = nodeArray.filter { $0 === pointer }.first
            if match != nil {
                pos = nodeArray.firstIndex(where: { $0 === pointer })!
                print("pos (loop) \(pos)")
                return match
            }

            nodeArray.append(pointer)
            pointer = pointer.next!
        }

        pos = -1
        print("pos (no loop) \(pos)")
        return nil
    }
}
