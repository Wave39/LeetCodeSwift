//
//  Problem1255.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 5/24/24.
//

// 1255. Maximum Score Words Formed by Letters (Hard)
// https://leetcode.com/problems/maximum-score-words-formed-by-letters/

public class Problem1255 {
    public func run() {
        let solve1 = maxScoreWords(
            ["dog", "cat", "dad", "good"],
            ["a", "a", "c", "d", "d", "d", "g", "o", "o"],
            [1, 0, 9, 5, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
        )
        print("\(solve1) -- should be 23")
        let solve2 = maxScoreWords(
            ["xxxz", "ax", "bx", "cx"],
            ["z", "a", "b", "c", "x", "x", "x"],
            [4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 10]
        )
        print("\(solve2) -- should be 27")
        let solve3 = maxScoreWords(
            ["leetcode"],
            ["l", "e", "t", "c", "o", "d"],
            [0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0]
        )
        print("\(solve3) -- should be 0")
    }

    public func test(_ words: [String], _ letters: [Character], _ score: [Int]) -> Int {
        return maxScoreWords(words, letters, score)
    }

    func maxScoreWords(_ words: [String], _ letters: [Character], _ score: [Int]) -> Int {
        func stringToDictionary(_ str: String) -> [Character : Int] {
            var retval = [Character : Int]()

            for char in "abcdefghijklmnopqrstuvwxyz" {
                retval[char] = 0
            }

            for char in str {
                retval[char]! += 1
            }

            return retval
        }

        func calculateScore(_ str: String) -> Int {
            var retval = 0
            for char in str {
                retval += (score[Int(char.asciiValue!) - 97])
            }

            return retval
        }

        let letterDict = stringToDictionary(String(letters))
        var maxScore = 0
        for bitmask in 1..<(1<<words.count) {
            var stringToCheck = ""
            for idx in 0..<words.count {
                if bitmask & (1<<idx) > 0 {
                    stringToCheck += words[idx]
                }
            }

            let lettersUsed = stringToDictionary(stringToCheck)
            var stringOk = true
            for k in lettersUsed.keys {
                if lettersUsed[k]! > letterDict[k]! {
                    stringOk = false
                }
            }

            if stringOk {
                let score = calculateScore(stringToCheck)
                if score > maxScore {
                    maxScore = score
                }
            }

        }

        return maxScore
    }
}
