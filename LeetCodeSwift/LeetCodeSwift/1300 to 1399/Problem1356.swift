//
//  Problem1356.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/30/23.
//

// 1356. Sort Integers by The Number of 1 Bits (Easy)
// https://leetcode.com/problems/sort-integers-by-the-number-of-1-bits/

public class Problem1356 {
    public func run() {
        let solve1 = sortByBits([0, 1, 2, 3, 4, 5, 6, 7, 8])
        print("\(solve1) -- should be [0, 1, 2, 4, 8, 3, 5, 6, 7]")
        let solve2 = sortByBits([1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1])
        print("\(solve2) -- should be [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024]")
        let solve3 = sortByBits([10_000, 10_000])
        print("\(solve3) -- should be [10000, 10000]")
    }

    public func test(_ arr: [Int]) -> [Int] {
        return sortByBits(arr)
    }

    func sortByBits(_ arr: [Int]) -> [Int] {
        var newArr = arr
        let multiplier = 100_000
        for idx in 0..<newArr.count {
            newArr[idx] += newArr[idx].nonzeroBitCount * multiplier
        }

        return newArr.sorted().map { $0 % multiplier }
    }
}
