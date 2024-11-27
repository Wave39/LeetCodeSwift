//
//  Problem3243.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/27/24.
//

// 3243. Shortest Distance After Road Addition Queries I (Medium)
// https://leetcode.com/problems/shortest-distance-after-road-addition-queries-i/

// https://leetcode.com/problems/shortest-distance-after-road-addition-queries-i/solutions/6087042/swift/

public class Problem3243 {
    public func run() {
        let solve1 = shortestDistanceAfterQueries(5, [[2, 4], [0, 2], [0, 4]])
        print("\(solve1) -- should be [3, 2, 1]")
        let solve2 = shortestDistanceAfterQueries(4, [[0, 3], [0, 2]])
        print("\(solve2) -- should be [1, 1]")
    }

    public func test(_ n: Int, _ queries: [[Int]]) -> [Int] {
        return shortestDistanceAfterQueries(n, queries)
    }

    func shortestDistanceAfterQueries(_ n: Int, _ queries: [[Int]]) -> [Int] {
        var graph = Array(0..<n).map { node in [node + 1] }

        func bfs(_ q: [Int]) -> Int {
            graph[q[0]].append(q[1])
            var bfs = [0]
            var visited = Array(repeating: false, count: n)
            var count = 0
            while !bfs.contains(n - 1) {
                bfs = bfs.flatMap { graph[$0] }.filter { !visited[$0] }
                bfs.forEach { node in visited[node] = true }
                count += 1
            }

            return count
        }

        return queries.map(bfs)
    }
}
