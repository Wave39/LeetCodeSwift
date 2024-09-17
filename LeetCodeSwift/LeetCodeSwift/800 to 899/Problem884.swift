//
//  Problem884.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/16/24.
//

// 884. Uncommon Words from Two Sentences (Easy)
// https://leetcode.com/problems/uncommon-words-from-two-sentences/

public class Problem884 {
    public func run() {
        let solve1 = uncommonFromSentences("this apple is sweet", "this apple is sour")
        print("\(solve1) -- should be [\"sweet\", \"sour\"]")
        let solve2 = uncommonFromSentences("apple apple", "banana")
        print("\(solve2) -- should be [\"banana\"]")
    }

    public func test(_ s1: String, _ s2: String) -> [String] {
        return uncommonFromSentences(s1, s2)
    }

    func uncommonFromSentences(_ s1: String, _ s2: String) -> [String] {
        var retval = [String]()
        let s1Dictionary = s1.split(separator: " ").reduce(into: [:]) { (dict, string) in
            dict[string, default: 0] += 1
        }
        let s2Dictionary = s2.split(separator: " ").reduce(into: [:]) { (dict, string) in
            dict[string, default: 0] += 1
        }

        for word1 in s1Dictionary.keys {
            if s1Dictionary[word1] == 1 && (s2Dictionary[word1] == nil) {
                retval.append(String(word1))
            }
        }

        for word2 in s2Dictionary.keys {
            if s2Dictionary[word2] == 1 && (s1Dictionary[word2] == nil) {
                retval.append(String(word2))
            }
        }

        return retval
    }
}
