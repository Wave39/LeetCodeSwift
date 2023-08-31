//
//  Problem1323.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/31/23.
//

// 1323. Maximum 69 Number (Easy)
// https://leetcode.com/problems/maximum-69-number/

import Foundation

public class Problem1323 {
    public func run() {
        let solve1 = maximum69Number(9669)
        print("\(solve1) -- should be 9969")
        let solve2 = maximum69Number(9996)
        print("\(solve2) -- should be 9999")
        let solve3 = maximum69Number(9999)
        print("\(solve3) -- should be 9999")
    }

    public func test(_ num: Int) -> Int {
        return maximum69Number(num)
    }

    func maximum69Number(_ num: Int) -> Int {
        let numStr = Array("\(num)")
        for idx in 0..<numStr.count {
            if numStr[idx] == "6" {
                let mult = pow(Decimal(10), (numStr.count - idx - 1))
                return num + 3 * (mult as NSDecimalNumber).intValue
            }
        }

        return num
    }
}
