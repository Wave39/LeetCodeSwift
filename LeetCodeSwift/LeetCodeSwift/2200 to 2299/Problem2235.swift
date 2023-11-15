//
//  Problem2235.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/15/23.
//

// 2235. Add Two Integers (Easy)
// https://leetcode.com/problems/add-two-integers/

// WOO HOO!!
// Runtime: 0ms, Beats 100.00% of users with Swift
// Memory: 13.34MB, Beats 90.91% of users with Swift

// (How did this not beat 100% of Swift solutions on memory????????)

public class Problem2235 {
    public func run() {
        let solve1 = sum(12, 5)
        print("\(solve1) -- should be 17")
        let solve2 = sum(-10, 4)
        print("\(solve2) -- should be -6")
    }

    public func test(_ num1: Int, _ num2: Int) -> Int {
        return sum(num1, num2)
    }

    func sum(_ num1: Int, _ num2: Int) -> Int {
        return num1 + num2
    }
}
