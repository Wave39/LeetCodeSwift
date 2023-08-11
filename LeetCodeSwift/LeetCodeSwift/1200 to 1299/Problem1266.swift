//
//  Problem1266.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/23/22.
//

// 1266. Minimum Time Visiting All Points (Easy)
// https://leetcode.com/problems/minimum-time-visiting-all-points/

public class Problem1266 {
    public func run() {
        let solve1 = minTimeToVisitAllPoints([[1, 1], [3, 4], [-1, 0]])
        print("\(solve1) -- should be 7")
        let solve2 = minTimeToVisitAllPoints([[3, 2], [-2, 2]])
        print("\(solve2) -- should be 5")
    }

    public func test(_ points: [[Int]]) -> Int {
        return minTimeToVisitAllPoints(points)
    }

    func minTimeToVisitAllPoints(_ points: [[Int]]) -> Int {
        var distance = 0
        if points.count > 1 {
            for idx in 0..<points.count - 1 {
                let deltaX = abs(points[idx][0] - points[idx + 1][0])
                let deltaY = abs(points[idx][1] - points[idx + 1][1])
                distance += max(deltaX, deltaY)
            }
        }

        return distance
    }
}
