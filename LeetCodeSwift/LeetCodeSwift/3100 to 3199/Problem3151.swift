//
//  Problem3151.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 5/21/24.
//

// 3151. Special Array I (Easy)
// https://leetcode.com/problems/special-array-i/

public class Problem3151 {
    public func run() {
        let solve1 = isArraySpecial([1])
        print("\(solve1) -- should be true")
        let solve2 = isArraySpecial([2, 1, 4])
        print("\(solve2) -- should be true")
        let solve3 = isArraySpecial([4, 3, 1, 6])
        print("\(solve3) -- should be false")
    }

    public func test(_ nums: [Int]) -> Bool {
        return isArraySpecial(nums)
    }

    func isArraySpecial(_ nums: [Int]) -> Bool {
        if nums.count == 1 {
            return true
        }
        
        for idx in 0..<(nums.count - 1) {
            if nums[idx] % 2 == nums[idx + 1] % 2 {
                return false
            }
        }

        return true
    }
}
