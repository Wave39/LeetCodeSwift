//
//  Problem2058.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/4/24.
//

// 2058. Find the Minimum and Maximum Number of Nodes Between Critical Points (Medium)
// https://leetcode.com/problems/find-the-minimum-and-maximum-number-of-nodes-between-critical-points/

public class Problem2058 {
    public func run() {
        let solve1 = nodesBetweenCriticalPoints(ListNode.arrayToList([3, 1]))
        print("\(solve1) -- should be [-1, -1]")
        let solve2 = nodesBetweenCriticalPoints(ListNode.arrayToList([5, 3, 1, 2, 5, 1, 2]))
        print("\(solve2) -- should be [1, 3]")
        let solve3 = nodesBetweenCriticalPoints(ListNode.arrayToList([1, 3, 2, 2, 3, 2, 2, 2, 7]))
        print("\(solve3) -- should be [3, 3]")
    }

    public func test(_ head: ListNode?) -> [Int] {
        return nodesBetweenCriticalPoints(head)
    }

    func nodesBetweenCriticalPoints(_ head: ListNode?) -> [Int] {
        var node = head
        var previousValue = -1
        var idx = 0
        var criticalPoints = [Int]()
        while node?.next != nil {
            if previousValue != -1 {
                let nodeVal = node!.val
                if (nodeVal < previousValue && nodeVal < node!.next!.val) || (nodeVal > previousValue && nodeVal > node!.next!.val) {
                    criticalPoints.append(idx)
                }
            }

            previousValue = node!.val
            idx += 1
            node = node!.next
        }

        if criticalPoints.count < 2 {
            return [-1, -1]
        }

        let max = criticalPoints.last! - criticalPoints.first!
        var min = max
        for idx in 0..<(criticalPoints.count - 1) {
            if criticalPoints[idx + 1] - criticalPoints[idx] < min {
                min = criticalPoints[idx + 1] - criticalPoints[idx]
            }
        }

        return [min, max]
    }
}
