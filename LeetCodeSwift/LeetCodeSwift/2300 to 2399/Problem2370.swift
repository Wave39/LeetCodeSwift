//
//  Problem2370.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 4/25/24.
//

// 2370. Longest Ideal Subsequence (Medium)
// https://leetcode.com/problems/longest-ideal-subsequence/

public class Problem2370 {
    public func run() {
        let solve1 = longestIdealString("acfgbd", 2)
        print("\(solve1) -- should be 4")
        let solve2 = longestIdealString("abcd", 3)
        print("\(solve2) -- should be 4")
    }

    public func test(_ s: String, _ k: Int) -> Int {
        return longestIdealString(s, k)
    }

    // https://leetcode.com/problems/longest-ideal-subsequence/solutions/2413240/swift-3-ways/
    func longestIdealString(_ s: String, _ k: Int) -> Int {
        let s = s.map { ch in
            Int(ch.asciiValue!) - 97 // ascii a
        }

        var dp = Array(repeating: 0, count: 26)
        for ch in s {
            dp[ch] = dp[max(ch - k, 0) ... min(ch + k, 25)].max()! + 1
        }

        return dp.max()!
    }
}
