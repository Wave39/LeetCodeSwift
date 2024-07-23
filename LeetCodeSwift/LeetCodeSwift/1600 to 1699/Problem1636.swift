//
//  Problem1636.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/23/24.
//

// 1636. Sort Array by Increasing Frequency (Easy)
// https://leetcode.com/problems/sort-array-by-increasing-frequency/

// WOO HOO!!!
// Runtime: 7 ms, Beats 100.00%
// Memory: 16.54 MB, Beats 37.50%

public class Problem1636 {
    public func run() {
        let solve1 = frequencySort([1, 1, 2, 2, 2, 3])
        print("\(solve1) -- should be [3, 1, 1, 2, 2, 2]")
        let solve2 = frequencySort([2, 3, 1, 3, 2])
        print("\(solve2) -- should be [1, 3, 3, 2, 2]")
        let solve3 = frequencySort([-1, 1, -6, 4, 5, -6, 1, 4, 1])
        print("\(solve3) -- should be [5, -1, 4, 4, -6, -6, 1, 1, 1]")
    }

    public func test(_ nums: [Int]) -> [Int] {
        return frequencySort(nums)
    }

    func frequencySort(_ nums: [Int]) -> [Int] {
        let counts = Dictionary(nums.map { ($0, 1) }, uniquingKeysWith: +).map { ($0.key, $0.value) }
        let sortedCounts = counts.sorted { (a, b) -> Bool in
            return a.1 != b.1 ? a.1 < b.1 : a.0 > b.0
        }

        var retval = [Int]()
        for count in sortedCounts {
            retval.append(contentsOf: Array(repeating: count.0, count: count.1))
        }

        return retval
    }
}
