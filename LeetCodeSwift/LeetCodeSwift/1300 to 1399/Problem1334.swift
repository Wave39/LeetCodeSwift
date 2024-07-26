//
//  Problem1334.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/26/24.
//

// 1334. Find the City With the Smallest Number of Neighbors at a Threshold Distance (Medium)
// https://leetcode.com/problems/find-the-city-with-the-smallest-number-of-neighbors-at-a-threshold-distance/

// https://leetcode.com/problems/find-the-city-with-the-smallest-number-of-neighbors-at-a-threshold-distance/solutions/5536531/swift-floyd-warshall/

public class Problem1334 {
    public func run() {
        let solve1 = findTheCity(4, [[0, 1, 3], [1, 2, 1], [1, 3, 4], [2, 3, 1]], 4)
        print("\(solve1) -- should be 3")
        let solve2 = findTheCity(5, [[0, 1, 2], [0, 4, 8], [1, 2, 3], [1, 4, 2], [2, 3, 1], [3, 4, 1]], 2)
        print("\(solve2) -- should be 0")
    }

    public func test(_ n: Int, _ edges: [[Int]], _ threshold: Int) -> Int {
        return findTheCity(n, edges, threshold)
    }

    func findTheCity(_ n: Int, _ edges: [[Int]], _ threshold: Int) -> Int {
        var dist: [[Int]] = (0..<n).map { row in
            (0..<n).map { col in
                row == col ? 0 : threshold + 1
            }
        }

        for edge in edges {
            let (u, v, distance) = (edge[0], edge[1], edge[2])
            dist[u][v] = distance
            dist[v][u] = distance
        }

        for k in 0..<n {
            for i in 0..<n {
                for j in 0..<n {
                    dist[i][j] = min(dist[i][j], dist[i][k] + dist[k][j])
                }
            }
        }

        let cityCounts = dist.map { $0.filter { $0 <= threshold }.count }

        return cityCounts.lastIndex(of: cityCounts.min()!)!
    }
}
