//
//  Problem1930.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/14/23.
//

// 1930. Unique Length-3 Palindromic Subsequences (Medium)
// https://leetcode.com/problems/unique-length-3-palindromic-subsequences/

// https://leetcode.com/problems/unique-length-3-palindromic-subsequences/solutions/4286872/fast-and-easy-solution-in-swift/

public class Problem1930 {
    public func run() {
        let solve1 = countPalindromicSubsequence("aabca")
        print("\(solve1) -- should be 3")
        let solve2 = countPalindromicSubsequence("adc")
        print("\(solve2) -- should be 0")
        let solve3 = countPalindromicSubsequence("bbcbaba")
        print("\(solve3) -- should be 4")
    }

    public func test(_ s: String) -> Int {
        return countPalindromicSubsequence(s)
    }

    func countPalindromicSubsequence(_ s: String) -> Int {
        var count = 0
        let arr = Array(s)
        for char in "abcdefghijklmnopqrstuvwxyz" {
            if let i = arr.firstIndex(of: char),
               let j = arr.lastIndex(of: char),
               (i + 2) <= j {
                count += Set(arr[(i + 1)..<j]).count
            }
        }

        return count
    }
}
