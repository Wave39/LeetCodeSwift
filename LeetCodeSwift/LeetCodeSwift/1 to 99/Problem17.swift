//
//  Problem17.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 3/22/24.
//

// 17. Letter Combinations of a Phone Number (Medium)
// https://leetcode.com/problems/letter-combinations-of-a-phone-number/

public class Problem17 {
    public func run() {
        let solve1 = letterCombinations("23")
        print("\(solve1) -- should be [\"ad\", \"ae\", \"af\", \"bd\", \"be\", \"bf\", \"cd\", \"ce\", \"cf\"]")
        let solve2 = letterCombinations("")
        print("\(solve2) -- should be []")
        let solve3 = letterCombinations("2")
        print("\(solve3) -- should be [\"a\", \"b\", \"c\"]")
    }

    public func test(_ digits: String) -> [String] {
        return letterCombinations(digits)
    }

    let letterLookup: Dictionary<Character, [String]> = [
        "2": ["a", "b", "c"],
        "3": ["d", "e", "f"],
        "4": ["g", "h", "i"],
        "5": ["j", "k", "l"],
        "6": ["m", "n", "o"],
        "7": ["p", "q", "r", "s"],
        "8": ["t", "u", "v"],
        "9": ["w", "x", "y", "z"]
    ]

    func letterCombinations(_ digits: String) -> [String] {
        var retval = [String]()
        for digit in digits {
            let letters = letterLookup[digit]!
            if retval.isEmpty {
                retval = letters
            } else {
                var newRetval = [String]()
                for value in retval {
                    for letter in letters {
                        newRetval.append(value + letter)
                    }
                }

                retval = newRetval
            }
        }

        return retval
    }
}
