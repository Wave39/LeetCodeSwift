//
//  Problem2441.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 5/2/24.
//

// 2441. Largest Positive Integer That Exists With Its Negative (Easy)
// https://leetcode.com/problems/largest-positive-integer-that-exists-with-its-negative/

// WOO HOO!!!
// Runtime: 34 ms, Beats 100.00% of users with Swift
// Memory: 16.08 MB, Beats 18.18% of users with Swift

public class Problem2441 {
    public func run() {
        let solve1 = findMaxK([-1, 2, -3, 3])
        print("\(solve1) -- should be 3")
        let solve2 = findMaxK([-1, 10, 6, 7, -7, 1])
        print("\(solve2) -- should be 7")
        let solve3 = findMaxK([-10, 8, 6, 7, -2, -3])
        print("\(solve3) -- should be -1")
    }

    public func test(_ nums: [Int]) -> Int {
        return findMaxK(nums)
    }

    func findMaxK(_ nums: [Int]) -> Int {
        let array = nums.filter({$0 > 0}).sorted().reversed()
        let set = Set(nums.filter({$0 < 0}).map({-$0}))
        for val in array {
            if set.contains(val) {
                return val
            }
        }

        return -1
    }
}
