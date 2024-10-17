//
//  Problem670.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/17/24.
//

// 670. Maximum Swap (Medium)
// https://leetcode.com/problems/maximum-swap/

// WOO HOO!!!
// Runtime: 0 ms, Beats 100.00%
// Memory: 17.77 MB, Beats 10.58%

import Foundation

public class Problem670 {
    public func run() {
        let solve1 = maximumSwap(2736)
        print("\(solve1) -- should be 7236")
        let solve2 = maximumSwap(9973)
        print("\(solve2) -- should be 9973")
    }

    public func test(_ num: Int) -> Int {
        return maximumSwap(num)
    }

    func maximumSwap(_ num: Int) -> Int {
        var retval = num
        var digits = Array(String(num)).map { String($0) }
        for i in 0..<(digits.count - 1) {
            for j in (i + 1)..<digits.count {
                let di = digits[i]
                let dj = digits[j]
                digits[i] = dj
                digits[j] = di
                let newNum = Int(digits.joined())!
                if newNum > retval {
                    retval = newNum
                }

                digits[i] = di
                digits[j] = dj
            }
        }

        return retval
    }
}
