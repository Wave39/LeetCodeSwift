//
//  Problem53.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/17/22.
//

// 53. Maximum Subarray (Medium)
// https://leetcode.com/problems/maximum-subarray/

public class Problem53 {
    public func run() {
        let solve1 = maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4])
        print("\(solve1) -- should be 6")
        let solve2 = maxSubArray([1])
        print("\(solve2) -- should be 1")
        let solve3 = maxSubArray([5, 4, -1, 7, 8])
        print("\(solve3) -- should be 23")
    }

    public func test(_ nums: [Int]) -> Int {
        return maxSubArray(nums)
    }

    func maxSubArray(_ nums: [Int]) -> Int {
        var maxValue = nums[0]
        var sum = 0
        for num in nums {
            if sum < 0 {
                sum = 0
            }

            sum += num
            maxValue = max(maxValue, sum)
        }

        return maxValue
    }

    func maxSubArray_naive(_ nums: [Int]) -> Int {
        let numberCount = nums.count
        var max = Int.min
        for row in 0..<numberCount {
            var rowSum = 0
            for col in row..<numberCount {
                rowSum += nums[col]
                if rowSum > max {
                    max = rowSum
                }
            }
        }

        return max
    }
}
