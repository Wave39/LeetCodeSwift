//
//  Problem2642.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/11/23.
//

// 2642. Design Graph With Shortest Path Calculator (Hard)
// https://leetcode.com/problems/design-graph-with-shortest-path-calculator/

// I kind of knew that a Dijkstra was going to be involved here, but didn't feel like trying to code
// it up from scratch. It is a Saturday night, after all.
// https://leetcode.com/problems/design-graph-with-shortest-path-calculator/solutions/4275907/solution-swift-dijkstra/

public class Problem2642 {
    class Graph {
        private let n: Int
        private var graph: [[Int]]
        private var source = -1
        private var dist = [Int]()

        init(_ n: Int, _ edges: [[Int]]) {
            self.n = n
            self.graph = Array(repeating: Array(repeating: -1, count: n), count: n)
            for e in edges {
                self.graph[e[0]][e[1]] = e[2]
            }

            self.dist = Array(repeating: -1, count: n)
        }

        func addEdge(_ edge: [Int]) {
            graph[edge[0]][edge[1]] = edge[2]
            source = -1
        }

        func shortestPath(_ node1: Int, _ node2: Int) -> Int {
            guard node1 != source else { return dist[node2] == MAX_DIST ? -1 : dist[node2] }
            source = node1
            var queue = Set<Int>()
            for i in 0..<n {
                dist[i] = MAX_DIST
                queue.insert(i)
            }

            dist[source] = 0

            while !queue.isEmpty {
                let u = queue.min(by: { dist[$0] < dist[$1] })!
                queue.remove(u)
                for i in 0..<n {
                    guard graph[u][i] != -1, queue.contains(i) else { continue }
                    let alt = dist[u] + graph[u][i]
                    if alt < dist[i] {
                        dist[i] = alt
                    }
                }
            }

            return dist[node2] == MAX_DIST ? -1 : dist[node2]
        }

        let MAX_DIST = 1_000_000_000
    }

    public func run() {
        var solve1 = [Int]()
        let graph1 = Graph(4, [[0, 2, 5], [0, 1, 2], [1, 2, 1], [3, 0, 3]])
        solve1.append(graph1.shortestPath(3, 2))
        solve1.append(graph1.shortestPath(0, 3))
        graph1.addEdge([1, 3, 4])
        solve1.append(graph1.shortestPath(0, 3))
        print("\(solve1) -- should be [6, -1, 6]")
    }
}
