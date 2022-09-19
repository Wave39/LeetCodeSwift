//
//  Problem88.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/19/22.
//

// 88. Merge Sorted Array
// https://leetcode.com/problems/merge-sorted-array/

public class Problem88 {
    public func run() {
        var nums1 = [1, 2, 3, 0, 0, 0]
        merge(&nums1, 3, [2, 5, 6], 3)
        print("\(nums1) -- should be [1, 2, 2, 3, 5, 6]")
        var nums2 = [1]
        merge(&nums2, 1, [], 0)
        print("\(nums2) -- should be [1]")
        var nums3 = [0]
        merge(&nums3, 0, [1], 1)
        print("\(nums3) -- should be [1]")
    }

    public func test(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        return merge(&nums1, m, nums2, n)
    }

    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var masterIndex = m + n - 1
        var index1 = m - 1
        var index2 = n - 1
        while index2 >= 0 {
            if index1 == -1 || nums2[index2] >= nums1[index1] {
                nums1[masterIndex] = nums2[index2]
                index2 -= 1
            } else {
                nums1[masterIndex] = nums1[index1]
                index1 -= 1
            }

            masterIndex -= 1
        }
    }
}
