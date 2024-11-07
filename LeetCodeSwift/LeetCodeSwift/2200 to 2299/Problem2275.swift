//
//  Problem2275.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/7/24.
//

// 2275. Largest Combination With Bitwise AND Greater Than Zero (Medium)
// https://leetcode.com/problems/largest-combination-with-bitwise-and-greater-than-zero/

// https://leetcode.com/problems/largest-combination-with-bitwise-and-greater-than-zero/solutions/6017248/swift/

public class Problem2275 {
    public func run() {
        let solve1 = largestCombination([16, 17, 71, 62, 12, 24, 14])
        print("\(solve1) -- should be 4")
        let solve2 = largestCombination([8, 8])
        print("\(solve2) -- should be 2")
    }

    public func test(_ candidates: [Int]) -> Int {
        return largestCombination(candidates)
    }

    func largestCombination(_ candidates: [Int]) -> Int {
        let msb = Int.bitWidth - candidates.max()!.leadingZeroBitCount
        return (0..<msb).reduce(0) { result, bit in
            let sum = candidates.map { n in n >> bit & 1 }.reduce(0, +)
            return max(result, sum)
        }
    }
}
