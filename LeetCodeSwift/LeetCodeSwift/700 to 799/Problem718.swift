//
//  Problem718.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/19/22.
//

// 718. Maximum Length of Repeated Subarray
// https://leetcode.com/problems/maximum-length-of-repeated-subarray/

// https://leetcode.com/problems/maximum-length-of-repeated-subarray/discuss/2599258/Swift-or-One-Liner

public class Problem718 {
    public func run() {
        let solve1 = findLength([1, 2, 3, 2, 1], [3, 2, 1, 4, 7])
        print("\(solve1) -- should be 3")
        let solve2 = findLength([0, 0, 0, 0, 0], [0, 0, 0, 0, 0])
        print("\(solve2) -- should be 5")
    }

    public func test(_ nums1: [Int], _ nums2: [Int]) -> Int {
        return findLength(nums1, nums2)
    }

    func findLength(_ nums1: [Int], _ nums2: [Int]) -> Int {
        var dp = Array(repeating: Array(repeating: 0, count: nums2.count+1), count: nums1.count+1)
        var result = 0
        for j in nums2.indices {
            for i in nums1.indices where nums1[i] == nums2[j] {
                dp[i+1][j+1] = dp[i][j] + 1
                result = max(result, dp[i+1][j+1])
            }
        }
        return result
    }
}
