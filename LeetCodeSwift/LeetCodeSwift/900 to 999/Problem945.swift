//
//  Problem945.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 6/14/24.
//

// 945. Minimum Increment to Make Array Unique (Medium)
// https://leetcode.com/problems/minimum-increment-to-make-array-unique/

public class Problem945 {
    public func run() {
        let solve1 = minIncrementForUnique([1, 2, 2])
        print("\(solve1) -- should be 1")
        let solve2 = minIncrementForUnique([3, 2, 1, 2, 1, 7])
        print("\(solve2) -- should be 6")
    }

    public func test(_ nums: [Int]) -> Int {
        return minIncrementForUnique(nums)
    }

    func minIncrementForUnique(_ nums: [Int]) -> Int {
        if nums.count == 1 {
            return 0
        }

        var sortedNums = nums.sorted()
        var retval = 0
        for idx in 0..<(sortedNums.count - 1) {
            if sortedNums[idx + 1] <= sortedNums[idx] {
                retval += (sortedNums[idx] - sortedNums[idx + 1] + 1)
                sortedNums[idx + 1] = sortedNums[idx] + 1
            }
        }

        return retval
    }
}
