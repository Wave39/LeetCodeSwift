//
//  Problem1716.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 12/6/23.
//

// 1716. Calculate Money in Leetcode Bank (Easy)
// https://leetcode.com/problems/calculate-money-in-leetcode-bank/

// WOO HOO!!
// Runtime: 4ms, Beats 25.00% of users with Swift
// Memory: 13.26MB, Beats 100.00% of users with Swift

public class Problem1716 {
    public func run() {
        let solve1 = totalMoney(4)
        print("\(solve1) -- should be 10")
        let solve2 = totalMoney(10)
        print("\(solve2) -- should be 37")
        let solve3 = totalMoney(20)
        print("\(solve3) -- should be 96")
    }

    public func test(_ n: Int) -> Int {
        return totalMoney(n)
    }

    func totalMoney(_ n: Int) -> Int {
        var savings = 0
        var deposit = 1
        for day in 1...n {
            savings += deposit
            if day.isMultiple(of: 7) {
                deposit -= 5
            } else {
                deposit += 1
            }
        }

        return savings
    }
}
