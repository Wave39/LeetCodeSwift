//
//  Problem1662.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 12/1/23.
//

// 1662. Check If Two String Arrays are Equivalent (Easy)
// https://leetcode.com/problems/check-if-two-string-arrays-are-equivalent/

// WOO HOO!!!
// Runtime: 4ms, Beats 94.20% of users with Swift
// Memory: 14.16MB, Beats 95.65% of users with Swift

// OK it's not 100% on either measurement, but it is close to 100% on both, and one of the easiest
// code golf answers that I have ever but together for LeetCode

public class Problem1662 {
    public func run() {
        let solve1 = arrayStringsAreEqual(["ab", "c"], ["a", "bc"])
        print("\(solve1) -- should be true")
        let solve2 = arrayStringsAreEqual(["a", "cb"], ["ab", "c"])
        print("\(solve2) -- should be false")
        let solve3 = arrayStringsAreEqual(["abc", "d", "defg"], ["abcddefg"])
        print("\(solve3) -- should be true")
    }

    public func test(_ word1: [String], _ word2: [String]) -> Bool {
        return arrayStringsAreEqual(word1, word2)
    }

    func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
        return word1.joined() == word2.joined()
    }
}
