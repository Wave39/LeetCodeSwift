//
//  Problem962.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/10/24.
//

// 962. Maximum Width Ramp (Medium)
// https://leetcode.com/problems/maximum-width-ramp/description/

// https://leetcode.com/problems/maximum-width-ramp/solutions/5893687/swift-monotonic-stack/

public class Problem962 {
    public func run() {
        let solve1 = maxWidthRamp([6, 0, 8, 2, 1, 5])
        print("\(solve1) -- should be 4")
        let solve2 = maxWidthRamp([9, 8, 1, 0, 1, 9, 4, 0, 4, 1])
        print("\(solve2) -- should be 7")
    }

    public func test(_ nums: [Int]) -> Int {
        return maxWidthRamp(nums)
    }

    func maxWidthRamp(_ nums: [Int]) -> Int {
        var result = 0
        var stack = nums.indices.reduce(into: [0]) { stack, i in
            guard nums[stack.last!] > nums[i] else { return }
            stack.append(i)
        }

        var j = nums.count - 1
        while !stack.isEmpty, j > 0 {
            while let i = stack.last, nums[i] <= nums[j] {
                result = max(result, j - i)
                _ = stack.popLast()
            }

            j -= 1
        }

        return result
    }

    func maxWidthRamp_naive(_ nums: [Int]) -> Int {
        var retval = 0
        for idx1 in 0..<(nums.count - 1) {
            for idx2 in (idx1 + 1)..<nums.count {
                if nums[idx1] <= nums[idx2] {
                    retval = max(retval, idx2 - idx1)
                }
            }
        }

        return retval
    }
}
