//
//  Problem500.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/2/22.
//

// 500. Keyboard Row
// https://leetcode.com/problems/keyboard-row/

public class Problem500 {
    public func run() {
        let solve1 = findWords(["Hello", "Alaska", "Dad", "Peace"])
        print("\(solve1) -- should be [\"Alaska\", \"Dad\"]")
        let solve2 = findWords(["omk"])
        print("\(solve2) -- should be []")
        let solve3 = findWords(["adsdf","sfd"])
        print("\(solve3) -- should be [\"adsdf\", \"sfd\"]")
    }

    public func test(_ words: [String]) -> [String] {
        return findWords(words)
    }

    func findWords(_ words: [String]) -> [String] {
        let characterToRowMap: [Character: Int] = [
            "q": 1, "w": 1, "e": 1, "r": 1, "t": 1, "y": 1, "u": 1, "i": 1, "o": 1, "p": 1,
            "a": 2, "s": 2, "d": 2, "f": 2, "g": 2, "h": 2, "j": 2, "k": 2, "l": 2,
            "z": 3, "x": 3, "c": 3, "v": 3, "b": 3, "n": 3, "m": 3
        ]

        var retval = [String]()
        for word in words {
            var rowSet = Set<Int>()
            let characterArray: [Character] = Array(word.lowercased())
            characterArray.forEach { rowSet.insert(characterToRowMap[$0]!) }
            if rowSet.count == 1 {
                retval.append(word)
            }
        }

        return retval
    }
}
