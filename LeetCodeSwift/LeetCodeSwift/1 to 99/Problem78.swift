//
//  Problem78.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 5/21/24.
//

// 78. Subsets (Medium)
// https://leetcode.com/problems/subsets/

public class Problem78 {
    public func run() {
        let solve1 = subsets([1, 2, 3])
        print("\(solve1) -- should be [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]")
        let solve2 = subsets([0])
        print("\(solve2) -- should be [[], [0]]")
    }

    public func test(_ nums: [Int]) -> [[Int]] {
        return subsets(nums)
    }

    func subsets(_ nums: [Int]) -> [[Int]] {
        var retval = [[Int]]()
        for bitmask in 0..<(1<<nums.count) {
            var arr = [Int]()
            for idx in 0..<nums.count {
                if bitmask & (1<<idx) > 0 {
                    arr.append(nums[idx])
                }
            }

            retval.append(arr)
        }

        return retval
    }
}
