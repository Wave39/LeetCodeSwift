//
//  Problem747.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/25/22.
//

// 747. Largest Number At Least Twice of Others (Easy)
// https://leetcode.com/problems/largest-number-at-least-twice-of-others/

public class Problem747 {
    public func run() {
        let solve1 = dominantIndex([3, 6, 1, 0])
        print("\(solve1) -- should be 1")
        let solve2 = dominantIndex([1, 2, 3, 4])
        print("\(solve2) -- should be -1")
        let solve3 = dominantIndex([0, 0, 0, 1])
        print("\(solve3) -- should be 3")
    }

    public func test(_ nums: [Int]) -> Int {
        return dominantIndex(nums)
    }

    func dominantIndex(_ nums: [Int]) -> Int {
        guard let max = nums.max() else {
            return -1
        }

        for num in nums {
            if num != max && (num * 2) > max {
                return -1
            }
        }

        return nums.firstIndex(of: max) ?? -1
    }
}
