//
//  Problem2416.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/25/24.
//

// 2416. Sum of Prefix Scores of Strings (Hard)
// https://leetcode.com/problems/sum-of-prefix-scores-of-strings/

// https://leetcode.com/problems/sum-of-prefix-scores-of-strings/solutions/5829996/swift-trie/

public class Problem2416 {
    public func run() {
        let solve1 = sumPrefixScores(["abc", "ab", "bc", "b"])
        print("\(solve1) -- should be [5, 4, 3, 2]")
        let solve2 = sumPrefixScores(["abcd"])
        print("\(solve2) -- should be [4]")
    }

    public func test(_ words: [String]) -> [Int] {
        return sumPrefixScores(words)
    }

    func sumPrefixScores(_ words: [String]) -> [Int] {
        class TrieNode {
            var next = [Character:TrieNode]()
            var prefixCount = 0
        }

        let trie = words.reduce(into: TrieNode()) { trie, word in
            _ = word.reduce(into: trie) { node, ch in
                node.next[ch] = node.next[ch] ?? TrieNode()
                node = node.next[ch]!
                node.prefixCount += 1
            }
        }

        return words.map { word in
            var node = trie
            return word.reduce(into: 0) { result, ch in
                node = node.next[ch]!
                result += node.prefixCount
            }
        }
    }
}
