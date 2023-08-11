//
//  Problem4.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/23/22.
//

// 4. Median of Two Sorted Arrays (Hard)
// https://leetcode.com/problems/median-of-two-sorted-arrays/

public class Problem4 {
    public func run() {
        let solve1 = findMedianSortedArrays([1, 3], [2])
        print("\(solve1) -- should be 2.0")
        let solve2 = findMedianSortedArrays([1, 2], [3, 4])
        print("\(solve2) -- should be 2.5")
    }

    public func test(_ nums1: [Int], _ nums2: [Int]) -> Double {
        return findMedianSortedArrays(nums1, nums2)
    }

    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var arr = nums1
        arr.append(contentsOf: nums2)
        arr.sort()
        if arr.count % 2 == 1 {
            return Double(arr[arr.count / 2])
        } else {
            return Double(arr[arr.count / 2 - 1] + arr[arr.count / 2]) / 2.0
        }
    }
}
