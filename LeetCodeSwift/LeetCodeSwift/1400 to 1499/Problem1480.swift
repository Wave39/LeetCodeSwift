//
//  Problem1480.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/2/22.
//

// 1480. Running Sum of 1d Array
// https://leetcode.com/problems/running-sum-of-1d-array/

public class Problem1480 {
    public func run() {
        let solve1 = runningSum([1, 2, 3, 4])
        print("\(solve1) -- should be [1, 3, 6, 10]")
        let solve2 = runningSum([1, 1, 1, 1, 1])
        print("\(solve2) -- should be [1, 2, 3, 4, 5]")
        let solve3 = runningSum([3, 1, 2, 10, 1])
        print("\(solve3) -- should be [3, 4, 6, 16, 17]")
    }

    public func test(_ nums: [Int]) -> [Int] {
        return runningSum(nums)
    }

    func runningSum(_ nums: [Int]) -> [Int] {
        var retval = [Int]()
        var total = 0
        for num in nums {
            total += num
            retval.append(total)
        }

        return retval
    }
}
