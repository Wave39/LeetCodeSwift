//
//  Problem1846.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/15/23.
//

// 1846. Maximum Element After Decreasing and Rearranging (Medium)
// https://leetcode.com/problems/maximum-element-after-decreasing-and-rearranging/

// WOO HOO!!!
// Runtime: 597ms, Beats 100.00% of users with Swift
// Memory: 18.16MB, Beats 100.00% of users with Swift

public class Problem1846 {
    public func run() {
        let solve1 = maximumElementAfterDecrementingAndRearranging([2, 2, 1, 2, 1])
        print("\(solve1) -- should be 2")
        let solve2 = maximumElementAfterDecrementingAndRearranging([100, 1, 1000])
        print("\(solve2) -- should be 3")
        let solve3 = maximumElementAfterDecrementingAndRearranging([1, 2, 3, 4, 5])
        print("\(solve3) -- should be 5")
    }

    public func test(_ arr: [Int]) -> Int {
        return maximumElementAfterDecrementingAndRearranging(arr)
    }

    func maximumElementAfterDecrementingAndRearranging(_ arr: [Int]) -> Int {
        var values = arr.sorted()
        values[0] = 1
        for idx in 1..<values.count {
            if values[idx] >= values[idx - 1] + 1 {
                values[idx] = values[idx - 1] + 1
            }
        }

        return values.last ?? -1
    }
}
