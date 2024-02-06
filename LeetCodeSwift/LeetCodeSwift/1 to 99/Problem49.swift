//
//  Problem49.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 2/6/24.
//

// 49. Group Anagrams (Medium)
// https://leetcode.com/problems/group-anagrams/

public class Problem49 {
    public func run() {
        let solve1 = groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"])
        print("\(solve1) -- should be [[\"bat\"], [\"tan\", \"nat\"], [\"eat\", \"tea\", \"ate\"]]")
        let solve2 = groupAnagrams([""])
        print("\(solve2) -- should be [[\"\"]]")
        let solve3 = groupAnagrams(["a"])
        print("\(solve3) -- should be [[\"a\"]]")
    }

    public func test(_ strs: [String]) -> [[String]] {
        groupAnagrams(strs)
    }

    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict: [String : [String]] = [:]
        for word in strs {
            let sortedWord = String(word.sorted())
            if dict[sortedWord] != nil {
                dict[sortedWord]?.append(word)
            } else {
                dict[sortedWord] = [word]
            }
        }

        return Array(dict.values).sorted { $0.count < $1.count }
    }
}
