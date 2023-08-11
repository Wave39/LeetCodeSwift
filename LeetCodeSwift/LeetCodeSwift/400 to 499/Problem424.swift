//
//  Problem424.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/28/22.
//

// 424. Longest Repeating Character Replacement (Medium)
// https://leetcode.com/problems/longest-repeating-character-replacement/

// https://leetcode.com/problems/longest-repeating-character-replacement/discuss/1495455/Swift-Sliding-window

public class Problem424 {
    public func run() {
        let solve1 = characterReplacement("ABAB", 2)
        print("\(solve1) -- should be 4")
        let solve2 = characterReplacement("AABABBA", 1)
        print("\(solve2) -- should be 4")
        let solve3 = characterReplacement("ABBB", 2)
        print("\(solve3) -- should be 4")
        let solve4 = characterReplacement("ABAA", 0)
        print("\(solve4) -- should be 2")
        let solve5 = characterReplacement("ABCCCCC", 2)
        print("\(solve5) -- should be 7")
    }

    public func test(_ s: String, _ k: Int) -> Int {
        return characterReplacement(s, k)
    }

    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var start = 0
        var repeatingcharCount = 0
        var dict = [Character: Int]()
        var length = 0
        let s = Array(s)

        for (end, char) in s.enumerated() {
            dict[char, default: 0] += 1
            repeatingcharCount = max(repeatingcharCount, dict[char]!)

            if (end - start + 1 - repeatingcharCount) > k {
                let key = s[start]
                dict[key]! -= 1
                start += 1
            }

            length = max(end - start + 1, length )
        }

        return length
    }
}

