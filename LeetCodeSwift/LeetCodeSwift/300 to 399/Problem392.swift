//
//  Problem392.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/3/22.
//

// 392. Is Subsequence (Easy)
// https://leetcode.com/problems/is-subsequence/

public class Problem392 {
    public func run() {
        let solve1 = isSubsequence("abc", "ahbgdc")
        print("\(solve1) -- should be true")
        let solve2 = isSubsequence("axc", "ahbgdc")
        print("\(solve2) -- should be false")
    }

    public func test(_ s: String, _ t: String) -> Bool {
        return isSubsequence(s, t)
    }

    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var tDict = [Character: [Int]]()
        for (idx, char) in t.enumerated() {
            tDict[char, default: []].append(idx)
        }

        var index = -1
        for char in s {
            guard let arr = tDict[char] else {
                return false
            }

            let larger = arr.filter { $0 > index }
            if larger.isEmpty {
                return false
            }

            index = larger.min()!
        }

        return true
    }
}
