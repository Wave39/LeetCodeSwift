//
//  Problem234.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/23/22.
//

// 234. Palindrome Linked List
// https://leetcode.com/problems/palindrome-linked-list/

public class Problem234 {
    public func run() {
        let list1 = ListNode.arrayToList([1, 2, 2, 1])
        let solve1 = isPalindrome(list1)
        print("\(solve1) should be true")

        let list2 = ListNode.arrayToList([1, 2])
        let solve2 = isPalindrome(list2)
        print("\(solve2) should be false")
    }

    public func test(_ l1: ListNode?) -> Bool {
        return isPalindrome(l1)
    }

    func isPalindrome(_ head: ListNode?) -> Bool {
        guard let arr = head?.toArray(), !arr.isEmpty else {
            return false
        }

        let arrCount = arr.count
        for idx in 0..<arrCount / 2 {
            if arr[idx] != arr[arrCount - 1 - idx] {
                return false
            }
        }

        return true
    }
}
