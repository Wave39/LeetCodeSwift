//
//  Problem1331.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/2/24.
//

// 1331. Rank Transform of an Array (Easy)
// https://leetcode.com/problems/rank-transform-of-an-array/

// WOO HOO!!!
// Runtime: 168 ms, Beats 100.00%
// Memory: 25.26 MB, Beats 85.71%

public class Problem1331 {
    public func run() {
        let solve1 = arrayRankTransform([40, 10, 20, 30])
        print("\(solve1) -- should be [4, 1, 2, 3]")
        let solve2 = arrayRankTransform([100, 100, 100])
        print("\(solve2) -- should be [1, 1, 1]")
        let solve3 = arrayRankTransform([37, 12, 28, 9, 100, 56, 80, 5, 12])
        print("\(solve3) -- should be [5, 3, 4, 2, 8, 6, 7, 1, 3]")
    }

    public func test(_ arr: [Int]) -> [Int] {
        return arrayRankTransform(arr)
    }

    func arrayRankTransform(_ arr: [Int]) -> [Int] {
        let sortedSet = Set(arr).sorted()
        var rankDict = [Int: Int]()
        for (index, value) in sortedSet.enumerated() {
            rankDict[value] = index + 1
        }
        
        return arr.map { rankDict[$0] ?? 0 }
    }
}
