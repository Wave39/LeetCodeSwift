//
//  Problem1.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/22/22.
//

// 1. Two Sum
// https://leetcode.com/problems/two-sum/

public class Problem1 {
    public func solve() {
        let solve1 = twoSum([2, 7, 11, 15], 9)
        print("\(solve1) -- should be [0, 1]")
        let solve2 = twoSum([3, 2, 4], 6)
        print("\(solve2) -- should be [1, 2]")
    }

    public func test(_ arr: [Int], _ target: Int) -> [Int] {
        return twoSum(arr, target)
    }

    func twoSumBruteForce(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<(nums.count - 1) {
            for j in (i + 1)..<nums.count {
                if (nums[i] + nums[j] == target) {
                    return [i, j]
                }
            }
        }
        return [0, 0]
    }

    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: Dictionary<Int, Int> = [:]
        for i in 0..<nums.count {
            if dict[nums[i]] != nil {
                return [dict[nums[i]]!, i]
            }
            dict[target - nums[i]] = i
        }
        return [0, 0]
    }
}
