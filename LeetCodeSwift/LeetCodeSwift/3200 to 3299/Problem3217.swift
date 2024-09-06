//
//  Problem3217.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/6/24.
//

// 3217. Delete Nodes From Linked List Present in Array (Medium)
// https://leetcode.com/problems/delete-nodes-from-linked-list-present-in-array/

// https://leetcode.com/problems/delete-nodes-from-linked-list-present-in-array/solutions/5743727/swift-greedy/

public class Problem3217 {
    public func run() {
        let solve1 = modifiedList([1, 2, 3], ListNode.arrayToList([1, 2, 3, 4, 5]))
        print("\(solve1!.toArray()) -- should be [4, 5]")
        let solve2 = modifiedList([1], ListNode.arrayToList([1, 2, 1, 2, 1, 2]))
        print("\(solve2!.toArray()) -- should be [2, 2, 2]")
        let solve3 = modifiedList([5], ListNode.arrayToList([1, 2, 3, 4]))
        print("\(solve3!.toArray()) -- should be [1, 2, 3, 4]")
    }

    public func test(_ nums: [Int], _ head: ListNode?) -> ListNode? {
        return modifiedList(nums, head)
    }

    func modifiedList(_ nums: [Int], _ head: ListNode?) -> ListNode? {
        let nums = Set(nums)
        let dummy = ListNode(0, head)
        var runner = dummy
        while true {
            while let next = runner.next, nums.contains(next.val) {
                runner.next = next.next
            }

            guard let next = runner.next else { return dummy.next }
            runner = next
        }
    }
}
