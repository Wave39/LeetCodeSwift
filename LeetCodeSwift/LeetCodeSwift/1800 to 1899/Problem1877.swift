//
//  Problem1877.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/17/23.
//

// 1877. Minimize Maximum Pair Sum in Array (Medium)
// https://leetcode.com/problems/minimize-maximum-pair-sum-in-array/

public class Problem1877 {
    public func run() {
        let solve1 = minPairSum([3, 5, 2, 3])
        print("\(solve1) -- should be 7")
        let solve2 = minPairSum([3, 5, 4, 2, 4, 6])
        print("\(solve2) -- should be 8")
        let solve3 = minPairSum([4, 1, 5, 1, 2, 5, 1, 5, 5, 4])
        print("\(solve3) -- should be 8")
    }

    public func test(_ nums: [Int]) -> Int {
        return minPairSum(nums)
    }

    func minPairSum(_ nums: [Int]) -> Int {
        let ctr = nums.count
        let arr = nums.sorted()
        var retval = Int.min
        for idx in 0..<nums.count / 2 {
            retval = max(retval, arr[idx] + arr[ctr - idx - 1])
        }

        return retval
    }
}

