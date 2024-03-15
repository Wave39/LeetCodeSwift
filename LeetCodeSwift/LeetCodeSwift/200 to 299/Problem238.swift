//
//  Problem238.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 3/15/24.
//

// 238. Product of Array Except Self (Medium)
// https://leetcode.com/problems/product-of-array-except-self/

public class Problem238 {
    public func run() {
        let solve1 = productExceptSelf([1, 2, 3, 4])
        print("\(solve1) -- should be [24, 12, 8, 6]")
        let solve2 = productExceptSelf([-1, 1, 0, -3, 3])
        print("\(solve2) -- should be [0, 0, 9, 0, 0]")
    }

    public func test(_ nums: [Int]) -> [Int] {
        return productExceptSelf(nums)
    }

    // Borrowed this solution from:
    // https://leetcode.com/problems/product-of-array-except-self/solutions/3426752/2-best-swift-solutions-easy-to-understand/
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var prefix = Array(repeating: 1, count: nums.count)
        var suffix = Array(repeating: 1, count: nums.count)
        var result = Array(repeating: 0, count: nums.count)

        for i in 1 ..< nums.count {
            prefix[i] = prefix[i - 1] * nums[i - 1]
        }

        for i in (0 ..< nums.count - 1).reversed() {
            suffix[i] = suffix[i + 1] * nums[i + 1]
        }

        for i in 0 ..< result.count {
            result[i] = prefix[i] * suffix[i]
        }

        return result
    }

    func productExceptSelf_naive(_ nums: [Int]) -> [Int] {
        var retval = Array(repeating: 1, count: nums.count)

        for idx in 0..<nums.count {
            for idx2 in 0..<nums.count {
                if idx2 != idx {
                    retval[idx2] *= nums[idx]
                }
            }
        }

        return retval
    }
}
