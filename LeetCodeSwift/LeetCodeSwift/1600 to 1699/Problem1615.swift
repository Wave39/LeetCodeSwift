//
//  Problem1615.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/18/23.
//

// 1615. Maximal Network Rank (Medium)
// https://leetcode.com/problems/maximal-network-rank/

// WOO HOO!!!
// Memory: 14.34MB, Beats 100.00% of users with Swift

public class Problem1615 {
    public func run() {
        let solve1 = maximalNetworkRank(4, [[0, 1], [0, 3], [1, 2], [1, 3]])
        print("\(solve1) -- should be 4")
        let solve2 = maximalNetworkRank(5, [[0, 1], [0, 3], [1, 2], [1, 3], [2, 3], [2, 4]])
        print("\(solve2) -- should be 5")
        let solve3 = maximalNetworkRank(8, [[0, 1], [1, 2], [2, 3], [2, 4], [5, 6], [5, 7]])
        print("\(solve3) -- should be 5")
    }

    public func test(_ n: Int, _ roads: [[Int]]) -> Int {
        return maximalNetworkRank(n, roads)
    }

    func maximalNetworkRank(_ n: Int, _ roads: [[Int]]) -> Int {
        var maxRank = 0
        for idx1 in 0..<(n - 1) {
            for idx2 in (idx1 + 1)..<n {
                var roadSet = Set<[Int]>()
                for road in roads {
                    if road[0] == idx1 || road[0] == idx2 || road[1] == idx1 || road[1] == idx2 {
                        roadSet.insert([min(road[0], road[1]), max(road[0], road[1])])
                    }
                }

                if roadSet.count > maxRank {
                    maxRank = roadSet.count
                }
            }
        }

        return maxRank
    }
}
