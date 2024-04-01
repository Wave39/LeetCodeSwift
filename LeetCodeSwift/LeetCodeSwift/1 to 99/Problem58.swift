//
//  Problem58.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 4/1/24.
//

// 58. Length of Last Word (Easy)
// https://leetcode.com/problems/length-of-last-word/

public class Problem58 {
    public func run() {
        let solve1 = lengthOfLastWord("Hello World")
        print("\(solve1) -- should be 5")
        let solve2 = lengthOfLastWord("   fly me   to   the moon  ")
        print("\(solve2) -- should be 4")
        let solve3 = lengthOfLastWord("luffy is still joyboy")
        print("\(solve3) -- should be 6")
    }

    public func test(_ s: String) -> Int {
        return lengthOfLastWord(s)
    }

    func lengthOfLastWord(_ s: String) -> Int {
        return s.split(separator: " ", omittingEmptySubsequences: true).last!.count
    }
}
