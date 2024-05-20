//
//  Problem1863.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 5/20/24.
//

// 1863. Sum of All Subset XOR Totals (Easy)
// https://leetcode.com/problems/sum-of-all-subset-xor-totals/

public class Problem1863 {
    public func run() {
        let solve1 = subsetXORSum([1, 3])
        print("\(solve1) -- should be 6")
        let solve2 = subsetXORSum([5, 1, 6])
        print("\(solve2) -- should be 28")
        let solve3 = subsetXORSum([3, 4, 5, 6, 7, 8])
        print("\(solve3) -- should be 480")
        let solve4 = subsetXORSum([2, 4, 4])
        print("\(solve4) -- should be 24")
    }

    public func test(_ nums: [Int]) -> Int {
        return subsetXORSum(nums)
    }

    func subsetXORSum(_ nums: [Int]) -> Int {
        var retval = 0
        for bitmask in 1..<(1<<nums.count) {
            var ctr = 0
            for idx in 0..<nums.count {
                if bitmask & (1<<idx) > 0 {
                    ctr ^= nums[idx]
                }
            }

            retval += ctr
        }

        return retval
    }
}

