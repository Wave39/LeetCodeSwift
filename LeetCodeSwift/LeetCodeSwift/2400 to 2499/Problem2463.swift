//
//  Problem2463.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/31/24.
//

// 2463. Minimum Total Distance Traveled (Hard)
// https://leetcode.com/problems/minimum-total-distance-traveled/

// https://leetcode.com/problems/minimum-total-distance-traveled/solutions/5988505/swift-dp/

public class Problem2463 {
    public func run() {
        let solve1 = minimumTotalDistance([0, 4, 6], [[2, 2], [6, 2]])
        print("\(solve1) -- should be 4")
        let solve2 = minimumTotalDistance([1, -1], [[-2, 1], [2, 1]])
        print("\(solve2) -- should be 2")
    }

    public func test(_ robot: [Int], _ factory: [[Int]]) -> Int {
        return minimumTotalDistance(robot, factory)
    }

    func minimumTotalDistance(_ robot: [Int], _ factory: [[Int]]) -> Int {
        let robots = robot.sorted()
        let factories = factory.sorted { $0[0] < $1[0] }.flatMap { Array(repeating: $0[0], count: $0[1]) }
        var dp = Array(repeating: Array(repeating: -1, count:factories.count), count: robots.count)
        return minimumTotalDistance(0, 0)

        func minimumTotalDistance(_ robotStartIndex: Int, _ factoryStartIndex: Int) -> Int {
            if robotStartIndex == robots.count {
                return 0
            }

            if factoryStartIndex == factories.count {
                return 1_000_000_000_000
            }

            if dp[robotStartIndex][factoryStartIndex] >= 0 {
                return dp[robotStartIndex][factoryStartIndex]
            }

            let assign = abs(factories[factoryStartIndex] - robots[robotStartIndex]) + minimumTotalDistance(robotStartIndex + 1, factoryStartIndex + 1)
            let skip = minimumTotalDistance(robotStartIndex, factoryStartIndex + 1)
            dp[robotStartIndex][factoryStartIndex] = min(assign, skip)
            return dp[robotStartIndex][factoryStartIndex]
        }
    }
}
