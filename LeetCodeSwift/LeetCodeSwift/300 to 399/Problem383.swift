//
//  Problem383.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/25/22.
//

// 383. Ransom Note (Easy)
// https://leetcode.com/problems/ransom-note/

public class Problem383 {
    public func run() {
        let solve1 = canConstruct("a", "b")
        print("\(solve1) -- should be false")
        let solve2 = canConstruct("aa", "ab")
        print("\(solve2) -- should be false")
        let solve3 = canConstruct("aa", "aab")
        print("\(solve3) -- should be true")
    }

    public func test(_ ransomNote: String, _ magazine: String) -> Bool {
        return canConstruct(ransomNote, magazine)
    }

    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var ransomDict = [Character: Int]()
        ransomNote.forEach { c in
            ransomDict[c, default: 0] += 1
        }

        var magazineDict = [Character: Int]()
        magazine.forEach { c in
            magazineDict[c, default: 0] += 1
        }

        for k in ransomDict.keys {
            if ransomDict[k, default: 0] > magazineDict[k, default: 0] {
                return false
            }
        }

        return true
    }
}
