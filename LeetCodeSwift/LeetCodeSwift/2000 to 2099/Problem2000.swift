//
//  Problem2000.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 5/1/24.
//

// 2000. Reverse Prefix of Word (Easy)
// https://leetcode.com/problems/reverse-prefix-of-word/

public class Problem2000 {
    public func run() {
        let solve1 = reversePrefix("abcdefd", "d")
        print("\(solve1) -- should be dcbaefd")
        let solve2 = reversePrefix("xyxzxe", "z")
        print("\(solve2) -- should be zxyxxe")
        let solve3 = reversePrefix("abcd", "z")
        print("\(solve3) -- should be abcd")
    }

    public func test(_ word: String, _ ch: Character) -> String {
        return reversePrefix(word, ch)
    }

    func reversePrefix(_ word: String, _ ch: Character) -> String {
        guard let idx = word.firstIndex(of: ch) else {
            return word
        }

        let prefix = String(word[...idx].reversed())
        let suffix = word.suffix(from: word.index(idx, offsetBy: 1))
        return prefix + suffix
    }
}
