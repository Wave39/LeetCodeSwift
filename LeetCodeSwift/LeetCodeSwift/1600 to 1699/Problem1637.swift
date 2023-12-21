//
//  Problem1637.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 12/21/23.
//

// 1637. Widest Vertical Area Between Two Points Containing No Points (Medium)
// https://leetcode.com/problems/widest-vertical-area-between-two-points-containing-no-points/

public class Problem1637 {
    public func run() {
        let solve1 = maxWidthOfVerticalArea([[8, 7], [9, 9], [7, 4], [9, 7]])
        print("\(solve1) -- should be 1")
        let solve2 = maxWidthOfVerticalArea([[3, 1], [9, 0], [1, 0], [1, 4], [5, 3], [8, 8]])
        print("\(solve2) -- should be 3")
    }

    public func test(_ points: [[Int]]) -> Int {
        return maxWidthOfVerticalArea(points)
    }

    func maxWidthOfVerticalArea(_ points: [[Int]]) -> Int {
        let yValues = points.map { $0[0] }.sorted()
        var maxWidth = 0
        for idx in 0..<(yValues.count - 1) {
            if (yValues[idx + 1] - yValues[idx]) > maxWidth {
                maxWidth = yValues[idx + 1] - yValues[idx]
            }
        }

        return maxWidth
    }
}
