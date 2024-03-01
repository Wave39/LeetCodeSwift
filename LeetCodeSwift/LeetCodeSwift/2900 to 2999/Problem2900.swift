//
//  Problem2900.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 3/1/24.
//

// 2900. Longest Unequal Adjacent Groups Subsequence I (Easy)
// https://leetcode.com/problems/longest-unequal-adjacent-groups-subsequence-i/

public class Problem2900 {
    public func run() {
        let solve1 = getLongestSubsequence(["e", "a", "b"], [0, 0, 1])
        print("\(solve1) -- should be [\"e\", \"b\"]")
        let solve2 = getLongestSubsequence(["a", "b", "c", "d"], [1, 0, 1, 1])
        print("\(solve2) -- should be [\"a\", \"b\", \"c\"]")
    }

    public func test(_ words: [String], _ groups: [Int]) -> [String] {
        return getLongestSubsequence(words, groups)
    }

    func getLongestSubsequence(_ words: [String], _ groups: [Int]) -> [String] {
        var retval = [String]()
        var lastGroup = -1
        for idx in 0..<words.count {
            if groups[idx] != lastGroup {
                retval.append(words[idx])
                lastGroup = groups[idx]
            }
        }

        return retval
    }
}
