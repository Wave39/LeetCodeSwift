//
//  Problem995.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 6/24/24.
//

// 995. Minimum Number of K Consecutive Bit Flips (Hard)
// https://leetcode.com/problems/minimum-number-of-k-consecutive-bit-flips/

// https://leetcode.com/problems/minimum-number-of-k-consecutive-bit-flips/solutions/5361038/easy-swift-solution/

public class Problem995 {
    public func run() {
        let solve1 = minKBitFlips([0, 1, 0], 1)
        print("\(solve1) -- should be 2")
        let solve2 = minKBitFlips([1, 1, 0], 2)
        print("\(solve2) -- should be -1")
        let solve3 = minKBitFlips([0, 0, 0, 1, 0, 1, 1, 0], 3)
        print("\(solve3) -- should be 3")
    }

    public func test(_ nums: [Int], _ k: Int) -> Int {
        return minKBitFlips(nums, k)
    }

    func minKBitFlips(_ nums: [Int], _ k: Int) -> Int {
        let numsCount = nums.count
        var flip = false
        var flipIndex = 0
        var flipIndices: [Int] = []

        for i in 0..<numsCount {
            if flipIndex < flipIndices.count, flipIndices[flipIndex] == i {
                flip.toggle()
                flipIndex += 1
            }

            if (!flip && nums[i] == 0) || (flip && nums[i] == 1) {
                if i + k > numsCount {
                    return -1
                }

                flipIndices.append(i + k)
                flip.toggle()
            }
        }

        return flipIndices.count
    }
}
