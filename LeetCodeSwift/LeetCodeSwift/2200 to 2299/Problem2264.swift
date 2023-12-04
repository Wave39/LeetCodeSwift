//
//  Problem2264.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 12/4/23.
//

// 2264. Largest 3-Same-Digit Number in String (Easy)
// https://leetcode.com/problems/largest-3-same-digit-number-in-string/

// WOO HOO!!
// Runtime: 0ms, Beats 100.00% of users with Swift
// Memory: 14.96MB, Beats 14.29% of users with Swift

public class Problem2264 {
    public func run() {
        let solve1 = largestGoodInteger("6777133339")
        print("\"\(solve1)\" -- should be \"777\"")
        let solve2 = largestGoodInteger("2300019")
        print("\"\(solve2)\" -- should be \"000\"")
        let solve3 = largestGoodInteger("42352338")
        print("\"\(solve3)\" -- should be \"\"")
    }

    public func test(_ num: String) -> String {
        return largestGoodInteger(num)
    }

    func largestGoodInteger(_ num: String) -> String {
        for goodInteger in ["999", "888", "777", "666", "555", "444", "333", "222", "111", "000"] {
            if num.contains(goodInteger) {
                return goodInteger
            }
        }

        return ""
    }
}
