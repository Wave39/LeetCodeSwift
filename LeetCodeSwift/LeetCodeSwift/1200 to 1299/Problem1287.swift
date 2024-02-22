//
//  Problem1287.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 12/11/23.
//

// 1287. Element Appearing More Than 25% In Sorted Array (Easy)
// https://leetcode.com/problems/element-appearing-more-than-25-in-sorted-array/

// WOO HOO!!!
// Runtime: 67ms, Beats 100.00% of users with Swift
// Memory: 14.70MB, Beats 15.38% of users with Swift

public class Problem1287 {
    public func run() {
        let solve1 = findSpecialInteger([1, 2, 2, 6, 6, 6, 6, 7, 10])
        print("\(solve1) -- should be 6")
        let solve2 = findSpecialInteger([1, 1])
        print("\(solve2) -- should be 1")
        let solve3 = findSpecialInteger([1])
        print("\(solve3) -- should be 1")
    }

    public func test(_ arr: [Int]) -> Int {
        return findSpecialInteger(arr)
    }

    func findSpecialInteger(_ arr: [Int]) -> Int {
        if arr.count == 1 {
            return arr[0]
        }

        let word1Dict = arr.reduce(into: [:]) { counts, number in
            counts[number, default: 0] += 1
        }

        var threshold = arr.count / 4
        if threshold == 0 {
            threshold = 1
        }

        for (k, v) in word1Dict {
            if v > threshold {
                return k
            }
        }

        return -1
    }
}
