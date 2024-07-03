//
//  Problem1509.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/3/24.
//

// 1509. Minimum Difference Between Largest and Smallest Value in Three Moves (Medium)
// https://leetcode.com/problems/minimum-difference-between-largest-and-smallest-value-in-three-moves/

// https://leetcode.com/problems/minimum-difference-between-largest-and-smallest-value-in-three-moves/solutions/5406070/swift/

public class Problem1509 {
    public func run() {
        let solve1 = minDifference([5, 3, 2, 4])
        print("\(solve1) -- should be 0")
        let solve2 = minDifference([1, 5, 0, 10, 14])
        print("\(solve2) -- should be 1")
        let solve3 = minDifference([3, 100, 20])
        print("\(solve3) -- should be 0")
        let solve4 = minDifference([6, 6, 0, 1, 1, 4, 6])
        print("\(solve4) -- should be 2")
    }

    public func test(_ nums: [Int]) -> Int {
        return minDifference(nums)
    }

    func minDifference(_ nums: [Int]) -> Int {
        if nums.count <= 4 {
            return 0
        }

        let nums = nums.sorted()
        let numsSuffix = nums.suffix(4)
        let numsZip = zip(numsSuffix, nums)
        let numsMap = numsZip.map(-)
        let numsMin = numsMap.min()!
        return numsMin
    }
}
