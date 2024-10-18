//
//  Problem2044.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/18/24.
//

// 2044. Count Number of Maximum Bitwise-OR Subsets (Medium)
// https://leetcode.com/problems/count-number-of-maximum-bitwise-or-subsets/

// https://leetcode.com/problems/count-number-of-maximum-bitwise-or-subsets/solutions/5928772/swift-bit-mask/

public class Problem2044 {
    public func run() {
        let solve1 = countMaxOrSubsets([3, 1])
        print("\(solve1) -- should be 2")
        let solve2 = countMaxOrSubsets([2, 2, 2])
        print("\(solve2) -- should be 7")
        let solve3 = countMaxOrSubsets([3, 2, 1, 5])
        print("\(solve3) -- should be 6")
    }

    public func test(_ nums: [Int]) -> Int {
        return countMaxOrSubsets(nums)
    }

    func countMaxOrSubsets(_ nums: [Int]) -> Int {
        let n = nums.count
        let maxOr = nums.reduce(0, |)
        var res = 0

        for mask in 0..<(1 << n) {
            var subsetOr = 0
            for i in 0..<n where mask & (1 << i) != 0 {
                subsetOr |= nums[i]
            }
            if subsetOr == maxOr { res += 1 }
        }

        return res
    }
}
