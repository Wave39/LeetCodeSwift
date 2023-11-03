//
//  Problem2068.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/3/23.
//

// 2068. Check Whether Two Strings are Almost Equivalent (Easy)
// https://leetcode.com/problems/check-whether-two-strings-are-almost-equivalent/

public class Problem2068 {
    public func run() {
        let solve1 = checkAlmostEquivalent("aaaa", "bccb")
        print("\(solve1) -- should be false")
        let solve2 = checkAlmostEquivalent("abcdeef", "abaaacc")
        print("\(solve2) -- should be true")
        let solve3 = checkAlmostEquivalent("cccddabba", "babababab")
        print("\(solve3) -- should be true")
    }

    public func test(_ word1: String, _ word2: String) -> Bool {
        return checkAlmostEquivalent(word1, word2)
    }

    func checkAlmostEquivalent(_ word1: String, _ word2: String) -> Bool {
        let word1Dict = word1.reduce(into: [:]) { counts, letter in
            counts[letter, default: 0] += 1
        }
        
        let word2Dict = word2.reduce(into: [:]) { counts, letter in
            counts[letter, default: 0] += 1
        }

        for char in "abcdefghijklmnopqrstuvwxyz" {
            if abs(word1Dict[char, default: 0] - word2Dict[char, default: 0]) > 3 {
                return false
            }
        }

        return true
    }
}
