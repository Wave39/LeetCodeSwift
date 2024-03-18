//
//  Problem452.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 3/18/24.
//

// 452. Minimum Number of Arrows to Burst Balloons (Medium)
// https://leetcode.com/problems/minimum-number-of-arrows-to-burst-balloons/

public class Problem452 {
    public func run() {
        let solve1 = findMinArrowShots([[10, 16], [2, 8], [1, 6], [7, 12]])
        print("\(solve1) -- should be 2")
        let solve2 = findMinArrowShots([[1, 2], [3, 4], [5, 6], [7, 8]])
        print("\(solve2) -- should be 4")
        let solve3 = findMinArrowShots([[1, 2], [2, 3], [3, 4], [4, 5]])
        print("\(solve3) -- should be 2")
        let solve4 = findMinArrowShots([[1, 2], [4, 5], [1, 5]])
        print("\(solve4) -- should be 2")
    }

    public func test(_ points: [[Int]]) -> Int {
        return findMinArrowShots(points)
    }

    func findMinArrowShots(_ points: [[Int]]) -> Int {
        // https://leetcode.com/problems/minimum-number-of-arrows-to-burst-balloons/solutions/3003533/solution-swift-beats-100/
        let points = points.sorted { $0[1] < $1[1] }
        var lastArrow = Int.min
        var arrows = 0
        for point in points {
            if point[0] > lastArrow {
                arrows += 1
                lastArrow = point[1]
            }
        }

        return arrows
    }
}
