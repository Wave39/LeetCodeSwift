//
//  Problem1160.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 12/2/23.
//

// 1160. Find Words That Can Be Formed by Characters (Easy)
// https://leetcode.com/problems/find-words-that-can-be-formed-by-characters/

// WOO HOO!!!
// Runtime: 245ms, Beats 48.00% of users with Swift
// Memory: 14.46MB, Beats 100.00% of users with Swift

public class Problem1160 {
    public func run() {
        let solve1 = countCharacters(["cat", "bt", "hat", "tree"], "atach")
        print("\(solve1) -- should be 6")
        let solve2 = countCharacters(["hello", "world", "leetcode"], "welldonehoneyr")
        print("\(solve2) -- should be 10")
    }

    public func test(_ words: [String], _ chars: String) -> Int {
        return countCharacters(words, chars)
    }

    func countCharacters(_ words: [String], _ chars: String) -> Int {
        func getCharDict(_ str: String) -> [Character: Int] {
            var dict = [Character: Int]()
            for c in str {
                dict[c, default: 0] += 1
            }

            return dict
        }

        let baseDict = getCharDict(chars)
        var retval = 0
        for word in words {
            let wordDict = getCharDict(word)
            var wordOK = true
            for (k, v) in wordDict {
                if v > baseDict[k, default: 0] {
                    wordOK = false
                }
            }

            if wordOK {
                retval += word.count
            }
        }

        return retval
    }
}
