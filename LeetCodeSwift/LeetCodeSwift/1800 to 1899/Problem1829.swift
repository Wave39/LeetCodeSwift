//
//  Problem1829.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/8/24.
//

// 1829. Maximum XOR for Each Query (Medium)
// https://leetcode.com/problems/maximum-xor-for-each-query/

// https://leetcode.com/problems/maximum-xor-for-each-query/solutions/6021374/maximum-xor-for-each-query-swift-solution/

public class Problem1829 {
    public func run() {
        let solve1 = getMaximumXor([0, 1, 1, 3], 2)
        print("\(solve1) -- should be [0, 3, 2, 3]")
        let solve2 = getMaximumXor([2, 3, 4, 7], 3)
        print("\(solve2) -- should be [5, 2, 6, 5]")
        let solve3 = getMaximumXor([0, 1, 2, 2, 5, 7], 3)
        print("\(solve3) -- should be [4, 3, 6, 4, 6, 7]")
    }

    public func test(_ nums: [Int], _ maximumBit: Int) -> [Int] {
        return getMaximumXor(nums, maximumBit)
    }

    func getMaximumXor(_ nums: [Int], _ maximumBit: Int) -> [Int] {
        let maxVal = (1 << maximumBit) - 1
        var xorAll = nums.reduce(0, ^)
        var answer = [Int]()
        for num in nums.reversed() {
            answer.append(xorAll ^ maxVal)
            xorAll ^= num
        }

        return answer
    }
}
