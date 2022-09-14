//
//  Problem746.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/14/22.
//

// 746. Min Cost Climbing Stairs
// https://leetcode.com/problems/min-cost-climbing-stairs/

public class Problem746 {
    public func run() {
        let solve1 = minCostClimbingStairs([10, 15, 20])
        print("\(solve1) -- should be 15")
        let solve2 = minCostClimbingStairs([1, 100, 1, 1, 1, 100, 1, 1, 100, 1])
        print("\(solve2) -- should be 6")
    }

    public func test(_ cost: [Int]) -> Int {
        return minCostClimbingStairs(cost)
    }

    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        let stairCount = cost.count
        var minCost = Array(repeating: 0, count: stairCount)
        minCost[0] = cost[0]
        minCost[1] = cost[1]
        if stairCount > 2 {
            for idx in 2..<stairCount {
                minCost[idx] = min(minCost[idx - 1], minCost[idx - 2]) + cost[idx]
            }
        }

        let cost1 = minCost.removeLast()
        let cost2 = minCost.removeLast()
        return min(cost1, cost2)
    }
}
