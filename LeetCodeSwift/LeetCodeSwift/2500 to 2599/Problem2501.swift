//
//  Problem2501.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/28/24.
//

// 2501. Longest Square Streak in an Array (Medium)
// https://leetcode.com/problems/longest-square-streak-in-an-array/

// WOO HOO!!!
// Runtime: 17 ms, Beats 100.00%
// Memory: 21.62 MB, Beats 100.00%

public class Problem2501 {
    public func run() {
        let solve1 = longestSquareStreak([4, 3, 6, 16, 8, 2])
        print("\(solve1) -- should be 3")
        let solve2 = longestSquareStreak([2, 3, 5, 6, 7])
        print("\(solve2) -- should be -1")
    }

    public func test(_ nums: [Int]) -> Int {
        return longestSquareStreak(nums)
    }

    func longestSquareStreak(_ nums: [Int]) -> Int {
        let numsSet = Set(nums)
        var retval = -1
        for num in nums {
            var searchNum = num * num
            var count = 1
            while numsSet.contains(searchNum) {
                count += 1
                searchNum *= searchNum
            }

            if count > 1 {
                retval = max(count, retval)
            }
        }

        return retval
    }
}
