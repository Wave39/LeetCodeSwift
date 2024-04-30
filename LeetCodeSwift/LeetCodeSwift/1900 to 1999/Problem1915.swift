//
//  Problem1915.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 4/30/24.
//

// 1915. Number of Wonderful Substrings (Medium)
// https://leetcode.com/problems/number-of-wonderful-substrings/

public class Problem1915 {
    public func run() {
        let solve1 = wonderfulSubstrings("aba")
        print("\(solve1) -- should be 4")
        let solve2 = wonderfulSubstrings("aabb")
        print("\(solve2) -- should be 9")
        let solve3 = wonderfulSubstrings("he")
        print("\(solve3) -- should be 2")
    }

    public func test(_ word: String) -> Int {
        return wonderfulSubstrings(word)
    }

    func wonderfulSubstrings(_ word: String) -> Int {
        // https://leetcode.com/problems/number-of-wonderful-substrings/solutions/1306107/swift-solution/
        let word = word.map({ Int($0.asciiValue ?? 97) - 97 })
        let maxChar = 10
        var mask = 0
        var dict = [Int](repeating: 0, count: 1 << maxChar)
        var result = 0
        dict[0] = 1
        for char in word {
            mask ^= 1 << char
            result += dict[mask]
            for i in 0..<maxChar {
                result += dict[mask ^ (1 << i)]
            }

            dict[mask] += 1
        }

        return result
    }
}
