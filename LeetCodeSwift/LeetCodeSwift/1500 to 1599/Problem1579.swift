//
//  Problem1579.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 6/30/24.
//

// 1579. Remove Max Number of Edges to Keep Graph Fully Traversable (Hard)
// https://leetcode.com/problems/remove-max-number-of-edges-to-keep-graph-fully-traversable/

// https://leetcode.com/problems/remove-max-number-of-edges-to-keep-graph-fully-traversable/solutions/3468072/swift-union-find-smallest-fastest-solution/

public class Problem1579 {
    public func run() {
        let solve1 = maxNumEdgesToRemove(4, [[3, 1, 2], [3, 2, 3], [1, 1, 3], [1, 2, 4], [1, 1, 2], [2, 3, 4]])
        print("\(solve1) -- should be 2")
        let solve2 = maxNumEdgesToRemove(4, [[3, 1, 2], [3, 2, 3], [1, 1, 4], [2, 1, 4]])
        print("\(solve2) -- should be 0")
        let solve3 = maxNumEdgesToRemove(4, [[3, 2, 3], [1, 1, 2], [2, 3, 4]])
        print("\(solve3) -- should be -1")
    }

    public func test(_ n: Int, _ edges: [[Int]]) -> Int {
        return maxNumEdgesToRemove(n, edges)
    }

    func maxNumEdgesToRemove(_ n: Int, _ edges: [[Int]]) -> Int {
        var groups = [Array(0...n), Array(0...n)] // [0] = alice, [1] = bob
        var connectedCounts = [0,0], edgesNeeded = 0

        func find(_ x: Int, _ group: inout [Int]) -> Int {
            if x != group[x] { group[x] = find(group[x], &group) }
            return group[x]
        }

        func tryUnion(_ i:Int, _ j:Int, _ g:Int) -> Bool {
            let (x,y) = (find(i, &groups[g]), find(j, &groups[g]))
            groups[g][x] = y
            connectedCounts[g] += x != y ? 1 : 0
            return x != y
        }

        let ALICE = 1, BOB = 2, ALICE_OR_BOB = 3

        for e in edges where e[0] == ALICE_OR_BOB && tryUnion(e[1], e[2], 0) && tryUnion(e[1], e[2], 1) {
            edgesNeeded += 1
        }

        for e in edges where (e[0] == ALICE && tryUnion(e[1], e[2], 0)) || (e[0] == BOB && tryUnion(e[1], e[2], 1)) {
            edgesNeeded += 1
        }

        return connectedCounts.allSatisfy { $0 == n-1 } ? edges.count - edgesNeeded : -1
    }
}
