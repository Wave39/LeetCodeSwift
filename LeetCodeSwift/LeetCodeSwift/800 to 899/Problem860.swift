//
//  Problem860.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/15/24.
//

// 860. Lemonade Change (Easy)
// https://leetcode.com/problems/lemonade-change/

public class Problem860 {
    public func run() {
        let solve1 = lemonadeChange([5, 5, 5, 10, 20])
        print("\(solve1) -- should be true")
        let solve2 = lemonadeChange([5, 5, 10, 10, 20])
        print("\(solve2) -- should be false")
        let solve3 = lemonadeChange([5, 5, 10, 20, 5, 5, 5, 5, 5, 5, 5, 5, 5, 10, 5, 5, 20, 5, 20, 5])
        print("\(solve3) -- should be true")
    }

    public func test(_ bills: [Int]) -> Bool {
        return lemonadeChange(bills)
    }

    func lemonadeChange(_ bills: [Int]) -> Bool {
        var fives = 0
        var tens = 0
        for bill in bills {
            if bill == 5 {
                fives += 1
            } else if bill == 10 {
                if fives < 1 {
                    return false
                }

                tens += 1
                fives -= 1
            } else {
                if tens == 0 {
                    if fives < 3 {
                        return false
                    }

                    fives -= 3
                } else {
                    if fives < 1 || tens < 1 {
                        return false
                    }

                    tens -= 1
                    fives -= 1
                }
            }
        }

        return true
    }
}
