//
//  Problem1584.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/15/23.
//

// 1584. Min Cost to Connect All Points (Medium)
// https://leetcode.com/problems/min-cost-to-connect-all-points/

// I sometime struggle with these kinds of path optimization issues, so I went with this:
// https://leetcode.com/problems/min-cost-to-connect-all-points/solutions/1986345/swift-prim-s-algorithm-array/

public class Problem1584 {
    public func run() {
        let solve1 = minCostConnectPoints([[0, 0], [2, 2], [3, 10], [5, 2], [7, 0]])
        print("\(solve1) -- should be 20")
        let solve2 = minCostConnectPoints([[3, 12], [-2, 5], [-4, 1]])
        print("\(solve2) -- should be 18")
    }

    public func test(_ points: [[Int]]) -> Int {
        return minCostConnectPoints(points)
    }

    func minCostConnectPoints(_ points: [[Int]]) -> Int {
        var result = 0
        var connected = Array(repeating: false, count: points.count)
        var weights = Array(repeating: Int.max, count: points.count)

        func distance(_ from: [Int], _ to: [Int]) -> Int {
            abs((from[0] - to[0])) + abs((from[1] - to[1]))
        }

        func getNearestPoint() -> (point: Int, distance: Int) {
            var result = (point: -1, distance: Int.max)

            for i in 0..<weights.count {
                if connected[i] {
                    continue
                }

                if weights[i] < result.distance {
                    result = (point: i, distance: weights[i])
                }
            }

            return result
        }

        func updateWeights(_ from: Int) {
            for i in 0..<points.count {
                weights[i] = connected[i] ? weights[i] : min(weights[i], distance(points[from], points[i]))
            }
        }

        var currentPoint = 0
        weights[currentPoint] = 0

        for _ in points {
            let n = getNearestPoint()
            connected[n.point] = true
            result += n.distance
            currentPoint = n.point
            updateWeights(currentPoint)
        }

        return result
    }
}
