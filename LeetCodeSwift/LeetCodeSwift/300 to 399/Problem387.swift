//
//  Problem387.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/23/22.
//

// 387. First Unique Character in a String
// https://leetcode.com/problems/first-unique-character-in-a-string/

public class Problem387 {
    public func run() {
        let solve1 = firstUniqChar("leetcode")
        print("\(solve1) -- should be 0")
        let solve2 = firstUniqChar("loveleetcode")
        print("\(solve2) -- should be 2")
        let solve3 = firstUniqChar("aabb")
        print("\(solve3) -- should be -1")
    }

    public func test(_ s: String) -> Int {
        return firstUniqChar(s)
    }

    func firstUniqChar(_ s: String) -> Int {
        let dict = Dictionary(s.map { (String($0), 1) }, uniquingKeysWith: +)
        let characters = s.map { String($0) }
        for idx in 0..<s.count {
            if dict[characters[idx]] == 1 {
                return idx
            }
        }

        return -1
    }
}
