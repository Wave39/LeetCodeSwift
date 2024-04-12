//
//  Problem18.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 4/12/24.
//

// 18. 4Sum (Medium)
// https://leetcode.com/problems/4sum/

public class Problem18 {
    public func run() {
        let solve1 = fourSum([1, 0, -1, 0, -2, 2], 0)
        print("\(solve1) -- should be [[-2, -1, 1, 2], [-2, 0, 0, 2], [-1, 0, 0, 1]] (order may be different)")
        let solve2 = fourSum([2, 2, 2, 2, 2], 8)
        print("\(solve2) -- should be [[2, 2, 2, 2]]")
        let solve3 = fourSum([0], 0)
        print("\(solve3) -- should be []")
    }

    public func test(_ nums: [Int], _ target: Int) -> [[Int]] {
        return fourSum(nums, target)
    }

    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        if nums.count < 4 {
            return []
        }

        let nums = nums.sorted()
        var retval = Set<[Int]>()
        for i in 0..<(nums.count - 3) {
            for j in (i + 1)..<(nums.count - 2) {
                for k in (j + 1)..<(nums.count - 1) {
                    for l in (k + 1)..<nums.count {
                        if nums[i] + nums[j] + nums[k] + nums[l] == target {
                            retval.insert([nums[i], nums[j], nums[k], nums[l]])
                        }
                    }
                }
            }
        }

        return Array(retval)
    }
}
