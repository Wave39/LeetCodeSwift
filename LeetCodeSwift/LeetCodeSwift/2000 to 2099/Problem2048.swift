//
//  Problem2048.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/19/22.
//

// 2048. Next Greater Numerically Balanced Number (Medium)
// https://leetcode.com/problems/next-greater-numerically-balanced-number/

// WOO HOO!!!
// Runtime: 4613 ms, faster than 100.00% of Swift online submissions for Next Greater Numerically Balanced Number.
// Memory Usage: 13.8 MB, less than 100.00% of Swift online submissions for Next Greater Numerically Balanced Number.

public class Problem2048 {
    public func run() {
        let solve1 = nextBeautifulNumber(1)
        print("\(solve1) -- should be 22")
        let solve2 = nextBeautifulNumber(1000)
        print("\(solve2) -- should be 1333")
        let solve3 = nextBeautifulNumber(3000)
        print("\(solve3) -- should be 3133")
        let solve4 = nextBeautifulNumber(0)
        print("\(solve4) -- should be 1")
    }

    public func test(_ n: Int) -> Int {
        return nextBeautifulNumber(n)
    }

    func isNumberBeautiful(_ n: Int) -> Bool {
        let arr = Array(String(n))
        let dict = Dictionary(arr.map { (String($0), 1) }, uniquingKeysWith: +)
        for k in dict.keys {
            if dict[k] != Int(k) {
                return false
            }
        }

        return true
    }

    func nextBeautifulNumber(_ n: Int) -> Int {
        var index = n + 1
        while true {
            if isNumberBeautiful(index) {
                return index
            }

            index += 1
        }
    }
}
