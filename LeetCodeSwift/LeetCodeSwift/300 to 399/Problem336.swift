//
//  Problem336.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/16/22.
//

// 336. Palindrome Pairs
// https://leetcode.com/problems/palindrome-pairs/

// My solution would time out, and any of the Swift solutions that I found in the discussion area also timed out
// So don't try this code on the leetcode web site, just find a nice Python trie solution and copy/pasta

public class Problem336 {
    public func run() {
        let solve1 = palindromePairs(["abcd", "dcba", "lls", "s", "sssll"])
        print("\(solve1) -- should be [[0, 1], [1, 0], [2, 4], [3, 2]]")
        let solve2 = palindromePairs(["bat", "tab", "cat"])
        print("\(solve2) -- should be [[0, 1], [1, 0]]")
        let solve3 = palindromePairs(["a", ""])
        print("\(solve3) -- should be [[0, 1], [1, 0]]")
    }

    public func test(_ words: [String]) -> [[Int]] {
        return palindromePairs(words)
    }

    func palindromePairs(_ words: [String]) -> [[Int]] {
        func isPalindrome(_ s: String) -> Bool {
            let count = s.count
            guard let arr = Array(s) as? [Character] else { return false }
            for idx in 0...(count / 2) {
                if arr[idx] != arr[count - 1 - idx] {
                    return false
                }
            }

            return true
        }

        let wordCount = words.count
        var retval = [[Int]]()
        for i in 0..<wordCount {
            for j in 0..<wordCount {
                if i != j {
                    if isPalindrome("\(words[i])\(words[j])") {
                        retval.append([ i, j ])
                    }
                }
            }
        }

        return retval
    }

}
