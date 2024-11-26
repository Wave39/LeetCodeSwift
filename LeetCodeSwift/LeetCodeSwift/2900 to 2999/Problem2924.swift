//
//  Problem2924.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/26/24.
//

// 2924. Find Champion II (Medium)
// https://leetcode.com/problems/find-champion-ii/

// https://leetcode.com/problems/find-champion-ii/solutions/6083536/swift/

public class Problem2924 {
    public func run() {
        let solve1 = findChampion(3, [[0, 1], [1, 2]])
        print("\(solve1) -- should be 0")
        let solve2 = findChampion(4, [[0, 2], [1, 3], [1, 2]])
        print("\(solve2) -- should be -1")
    }

    public func test(_ n: Int, _ edges: [[Int]]) -> Int {
        return findChampion(n, edges)
    }

    func findChampion(_ n: Int, _ edges: [[Int]]) -> Int {
        let zeroIndegreeNodes = edges.reduce(into: Set(0..<n)) { set, edge in set.remove(edge[1]) }
        guard zeroIndegreeNodes.count == 1 else { return -1 }
        return zeroIndegreeNodes.first!
    }
}
