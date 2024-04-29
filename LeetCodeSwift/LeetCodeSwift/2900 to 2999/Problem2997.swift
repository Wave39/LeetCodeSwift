//
//  Problem2997.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 4/29/24.
//

// 2997. Minimum Number of Operations to Make Array XOR Equal to K (Medium)
// https://leetcode.com/problems/minimum-number-of-operations-to-make-array-xor-equal-to-k/

public class Problem2997 {
    public func run() {
        let solve1 = minOperations([2, 1, 3, 4], 1)
        print("\(solve1) -- should be 2")
        let solve2 = minOperations([2, 0, 2, 0], 0)
        print("\(solve2) -- should be 0")
    }

    public func test(_ nums: [Int], _ k: Int) -> Int {
        return minOperations(nums, k)
    }

    func minOperations(_ nums: [Int], _ k: Int) -> Int {
        // https://leetcode.com/problems/minimum-number-of-operations-to-make-array-xor-equal-to-k/solutions/5085593/swift-1liner/
        return nums.reduce(k, ^).nonzeroBitCount
    }
}
