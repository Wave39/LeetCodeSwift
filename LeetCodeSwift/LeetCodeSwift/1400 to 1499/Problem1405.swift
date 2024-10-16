//
//  Problem1405.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/16/24.
//

// 1405. Longest Happy String (Medium)
// https://leetcode.com/problems/longest-happy-string/

// https://leetcode.com/problems/longest-happy-string/solutions/5918601/swift-greedy/

public class Problem1405 {
    public func run() {
        let solve1 = longestDiverseString(1, 1, 7)
        print("\(solve1) -- should be either ccaccbcc or ccbccacc")
        let solve2 = longestDiverseString(7, 1, 0)
        print("\(solve2) -- should be aabaa")
    }

    public func test(_ a: Int, _ b: Int, _ c: Int) -> String {
        return longestDiverseString(a, b, c)
    }

    func longestDiverseString(_ a: Int, _ b: Int, _ c: Int) -> String {
        var counts: [Character: Int] = ["a": a, "b": b, "c": c]
        var result = ""

        while true {
            var tuple = counts.max { a, b in a.value < b.value }!
            if [tuple.key, tuple.key] == result.suffix(2) {
                tuple = counts.filter { a in a.key != tuple.key }.max { a, b in a.value < b.value }!
            }

            guard tuple.value > 0 else { return result }
            result.append(tuple.key)
            counts[tuple.key]! -= 1
        }
    }
}
