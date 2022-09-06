//
//  Problem409.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/6/22.
//

// 409. Longest Palindrome
// https://leetcode.com/problems/longest-palindrome/

public class Problem409 {
    public func run() {
        let solve1 = longestPalindrome("abccccdd")
        print("\(solve1) -- should be 7")
        let solve2 = longestPalindrome("a")
        print("\(solve2) -- should be 1")
        let solve3 = longestPalindrome("ccc")
        print("\(solve3) -- should be 3")
        let solve4 = longestPalindrome("cccddd")
        print("\(solve4) -- should be 5")
    }

    public func test(_ s: String) -> Int {
        return longestPalindrome(s)
    }

    func longestPalindrome(_ s: String) -> Int {
        var dict = [Character: Int]()
        for c in s {
            dict[c, default: 0] += 1
        }

        var evens = 0
        var odds = 0
        var extraOdds = 0
        for k in dict.keys {
            let count = dict[k]!
            if count % 2 == 0 {
                evens += count
            } else {
                odds = 1
                if count > 1 {
                    extraOdds += (count - 1)
                }
            }
        }

        return evens + extraOdds + odds
    }
}
