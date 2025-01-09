//
//  Problem2185.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 1/9/25.
//

// 2185. Counting Words With a Given Prefix (Easy)
// https://leetcode.com/problems/counting-words-with-a-given-prefix/

// WOO HOO!!!
// Runtime: 0 ms, Beats 100.00%
// Memory: 20.02 MB, Beats 9.52%

public class Problem2185 {
    public func run() {
        let solve1 = prefixCount(["pay", "attention", "practice", "attend"], "at")
        print("\(solve1) -- should be 2")
        let solve2 = prefixCount(["leetcode", "win", "loops", "success"], "code")
        print("\(solve2) -- should be 0")
    }

    public func test(_ words: [String], _ pref: String) -> Int {
        return prefixCount(words, pref)
    }

    func prefixCount(_ words: [String], _ pref: String) -> Int {
        return words.count(where: { $0.hasPrefix(pref) })
    }
}
