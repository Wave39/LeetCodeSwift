//
//  Problem86.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/15/23.
//

// 86. Partition List (Medium)
// https://leetcode.com/problems/partition-list/

public class Problem86 {
    public func run() {
        let solve1a = ListNode.arrayToList([1, 4, 3, 2, 5, 2])
        let solve1 = partition(solve1a, 3)
        print("\(solve1!.toArray()) should be [1, 2, 2, 4, 3, 5]")
        let solve2a = ListNode.arrayToList([2, 1])
        let solve2 = partition(solve2a, 2)
        print("\(solve2!.toArray()) should be [1, 2]")
    }

    public func test(_ head: ListNode?, _ x: Int) -> ListNode? {
        return partition(head, x)
    }

    func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
        guard let head else {
            return nil
        }

        var array1: [Int] = []
        var array2: [Int] = []
        let count = head.count()
        for idx in 0..<count {
            let node = head.nodeAtIndex(idx)
            if node.val < x {
                array1.append(node.val)
            } else {
                array2.append(node.val)
            }
        }

        array1.append(contentsOf: array2)
        return ListNode.arrayToList(array1)
    }
}
