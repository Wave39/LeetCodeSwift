//
//  Problem242.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/23/22.
//

// 242. Valid Anagram
// https://leetcode.com/problems/valid-anagram/

public class Problem242 {
    public func run() {
        let solve1 = isAnagram("anagram", "nagaram")
        print("\(solve1) -- should be true")
        let solve2 = isAnagram("rat", "car")
        print("\(solve2) -- should be false")
    }

    public func test(_ s: String, _ t: String) -> Bool {
        return isAnagram(s, t)
    }

    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }

        let sDict = Dictionary(s.map { (String($0), 1) }, uniquingKeysWith: +)
        let tDict = Dictionary(t.map { (String($0), 1) }, uniquingKeysWith: +)

        if sDict.keys.sorted() != tDict.keys.sorted() {
            return false
        }

        for k in sDict.keys {
            if sDict[k] != tDict[k] {
                return false
            }
        }

        return true
    }
}
