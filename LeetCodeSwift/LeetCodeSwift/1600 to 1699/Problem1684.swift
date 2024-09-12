//
//  Problem1684.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/12/24.
//

// 1684. Count the Number of Consistent Strings (Easy)
// https://leetcode.com/problems/count-the-number-of-consistent-strings/

public class Problem1684 {
    public func run() {
        let solve1 = countConsistentStrings("ab", ["ad","bd","aaab","baa","badab"])
        print("\(solve1) -- should be 2")
        let solve2 = countConsistentStrings("abc", ["a","b","c","ab","ac","bc","abc"])
        print("\(solve2) -- should be 7")
        let solve3 = countConsistentStrings("cad", ["cc","acd","b","ba","bac","bad","ac","d"])
        print("\(solve3) -- should be 4")
    }

    public func test(_ allowed: String, _ words: [String]) -> Int {
        return countConsistentStrings(allowed, words)
    }

    func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
        let allowedArray = Array(allowed)
        var retval = 0
        for word in words {
            var wordSet = Set(word.map { $0 })
            allowedArray.forEach { wordSet.remove($0) }
            if wordSet.isEmpty {
                retval += 1
            }
        }

        return retval
    }
}
