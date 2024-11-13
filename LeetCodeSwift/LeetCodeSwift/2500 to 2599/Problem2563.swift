//
//  Problem2563.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/13/24.
//

// 2563. Count the Number of Fair Pairs (Medium)
// https://leetcode.com/problems/count-the-number-of-fair-pairs/

// https://leetcode.com/problems/count-the-number-of-fair-pairs/solutions/3178103/swift/

import Foundation

public class Problem2563 {
    public func run() {
        let solve1 = countFairPairs([0, 1, 7, 4, 4, 5], 3, 6)
        print("\(solve1) -- should be 6")
        let solve2 = countFairPairs([1, 7, 9, 2, 5], 11, 11)
        print("\(solve2) -- should be 1")
    }

    public func test(_ nums: [Int], _ lower: Int, _ upper: Int) -> Int {
        return countFairPairs(nums, lower, upper)
    }

    func countFairPairs(_ nums: [Int], _ lower: Int, _ upper: Int) -> Int {
        let nums = nums.sorted()
        var result = 0, rLo = nums.count - 1, rUp = rLo
        for l in nums.indices {
            while l < rUp + 1 && upper < nums[l] + nums[rUp] {
                rUp -= 1
            }

            while l < rLo + 1 && lower <= nums[l] + nums[rLo] {
                rLo -= 1
            }

            guard l < max(rLo, rUp) else {
                break
            }

            result += max(rUp - l, 0) - max(rLo - l, 0)
        }

        return result
    }
}
