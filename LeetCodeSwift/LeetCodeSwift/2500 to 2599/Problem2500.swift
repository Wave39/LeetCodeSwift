//
//  Problem2500.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 2/22/24.
//

// 2413. Smallest Even Multiple (Easy)
// https://leetcode.com/problems/smallest-even-multiple/

// WOO HOO!!!
// Runtime: 35 ms, Beats 100.00% of users with Swift
// Memory: 15.28 MB, Beats 100.00% of users with Swift

public class Problem2500 {
    public func run() {
        let solve1 = deleteGreatestValue([[1, 2, 4], [3, 3, 1]])
        print("\(solve1) -- should be 8")
        let solve2 = deleteGreatestValue([[10]])
        print("\(solve2) -- should be 10")
    }

    public func test(_ grid: [[Int]]) -> Int {
        return deleteGreatestValue(grid)
    }

    func deleteGreatestValue(_ grid: [[Int]]) -> Int {
        var grid = grid
        var retval = 0
        while grid[0].count > 0 {
            var maxValue = Int.min
            for idx in 0..<grid.count {
                let rowMax = grid[idx].max()!
                let rowMaxIdx = grid[idx].firstIndex(of: rowMax)!
                grid[idx].remove(at: rowMaxIdx)
                if rowMax > maxValue {
                    maxValue = rowMax
                }
            }

            retval += maxValue
        }

        return retval
    }
}
