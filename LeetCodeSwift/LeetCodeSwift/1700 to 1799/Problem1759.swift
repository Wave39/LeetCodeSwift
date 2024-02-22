//
//  Problem1759.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/9/23.
//

// 1759. Count Number of Homogenous Substrings (Medium)
// https://leetcode.com/problems/count-number-of-homogenous-substrings/

// WOO HOO!!!
// Runtime: 37ms, Beats 100.00% of users with Swift
// Memory: 14.46MB, Beats 100.00% of users with Swift

public class Problem1759 {
    public func run() {
        let solve1 = countHomogenous("abbcccaa")
        print("\(solve1) -- should be 13")
        let solve2 = countHomogenous("xy")
        print("\(solve2) -- should be 2")
        let solve3 = countHomogenous("zzzzz")
        print("\(solve3) -- should be 15")
    }

    public func test(_ s: String) -> Int {
        return countHomogenous(s)
    }

    func countHomogenous(_ s: String) -> Int {
        func combinations(_ count: Int) -> Int {
            var sum = 0
            for idx in 1...count {
                sum += idx
            }

            return sum % 1_000_000_007
        }

        var lastChar: Character = s.first!
        var currentCount = 0
        var arr = [Int]()
        for ch in s {
            if ch == lastChar {
                currentCount += 1
            } else {
                arr.append(currentCount)
                lastChar = ch
                currentCount = 1
            }
        }

        arr.append(currentCount)

        var retval = 0
        for entry in arr {
            retval += combinations(entry)
        }

        return retval
    }
}
