//
//  Problem1051.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 6/10/24.
//

// 1051. Height Checker (Easy)
// https://leetcode.com/problems/height-checker/

public class Problem1051 {
    public func run() {
        let solve1 = heightChecker([1, 1, 4, 2, 1, 3])
        print("\(solve1) -- should be 3")
        let solve2 = heightChecker([5, 1, 2, 3, 4])
        print("\(solve2) -- should be 5")
        let solve3 = heightChecker([1, 2, 3, 4, 5])
        print("\(solve3) -- should be 0")
    }

    public func test(_ heights: [Int]) -> Int {
        return heightChecker(heights)
    }

    func heightChecker(_ heights: [Int]) -> Int {
        var retval = 0
        let sortedHeights = heights.sorted()
        for idx in 0..<heights.count {
            if heights[idx] != sortedHeights[idx] {
                retval += 1
            }
        }

        return retval
    }
}
