//
//  Problem2785.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/13/23.
//

// 2785. Sort Vowels in a String (Medium)
// https://leetcode.com/problems/sort-vowels-in-a-string/

// The trick on this one was sorting the vowels in descending order so that the remove last
// would run much faster than sorting it ascending and using remove first

public class Problem2785 {
    public func run() {
        let solve1 = sortVowels("lEetcOde")
        print("\(solve1) -- should be lEOtcede")
        let solve2 = sortVowels("lYmpH")
        print("\(solve2) -- should be lYmpH")
    }

    public func test(_ s: String) -> String {
        return sortVowels(s)
    }

    func sortVowels(_ s: String) -> String {
        func isVowel(_ c: Character) -> Bool {
            return "AEIOUaeiou".contains(c)
        }

        var vowels = [Character]()
        for c in s where isVowel(c) {
            vowels.append(c)
        }

        vowels.sort(by: >)
        var retval = ""
        for c in s {
            if isVowel(c) {
                retval.append(vowels.removeLast())
            } else {
                retval.append(c)
            }
        }

        return retval
    }
}
