//
//  Problem801.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/10/23.
//

// 801. Minimum Swaps To Make Sequences Increasing (Hard)
// https://leetcode.com/problems/minimum-swaps-to-make-sequences-increasing/

// This code is based on:
// https://leetcode.com/problems/minimum-swaps-to-make-sequences-increasing/solutions/1074346/swift-dp-solution/

public class Problem801 {
    public func run() {
        let solve1 = minSwap([1, 3, 5, 4], [1, 2, 3, 7])
        print("\(solve1) -- should be 1")
        let solve2 = minSwap([0, 3, 5, 8, 9], [2, 1, 4, 6, 9])
        print("\(solve2) -- should be 1")
    }

    public func test(_ nums1: [Int], _ nums2: [Int]) -> Int {
        return minSwap(nums1, nums2)
    }

    func minSwap(_ nums1: [Int], _ nums2: [Int]) -> Int {
        struct SwapCount {
            var normalCount = 0
            var swapCount = 0
        }
        
        var dp = [SwapCount](repeating: SwapCount(), count: nums1.count)
        dp[nums1.count - 1].swapCount = 1
        for i in stride(from: nums1.count - 2, through: 0, by: -1) {
            let normal = nums1[i] < nums1[i + 1] && nums2[i] < nums2[i + 1]
            let swap = nums1[i] < nums2[i + 1] && nums2[i] < nums1[i + 1]
            dp[i].normalCount = min(normal ? dp[i + 1].normalCount : Int.max, 
                                    swap ? dp[i + 1].swapCount : Int.max)
            dp[i].swapCount = min(normal ? dp[i + 1].swapCount + 1 : Int.max, 
                                  swap ? dp[i + 1].normalCount + 1 : Int.max)
        }

        return min(dp[0].normalCount, dp[0].swapCount)
    }
}
