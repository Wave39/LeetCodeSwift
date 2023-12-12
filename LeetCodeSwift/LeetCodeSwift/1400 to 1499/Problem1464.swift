//
//  Problem1464.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 12/12/23.
//

// 1464. Maximum Product of Two Elements in an Array (Easy)
// https://leetcode.com/problems/maximum-product-of-two-elements-in-an-array/

public class Problem1464 {
    public func run() {
        let solve1 = maxProduct([3, 4, 5, 2])
        print("\(solve1) -- should be 12")
        let solve2 = maxProduct([1, 5, 4, 5])
        print("\(solve2) -- should be 16")
        let solve3 = maxProduct([3, 7])
        print("\(solve3) -- should be 12")
    }

    public func test(_ nums: [Int]) -> Int {
        return maxProduct(nums)
    }

    func maxProduct(_ nums: [Int]) -> Int {
        let numsSorted = nums.sorted(by: >)
        return (numsSorted[0] - 1) * (numsSorted[1] - 1)
    }
}
