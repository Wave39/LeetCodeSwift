//
//  Problem633.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 6/17/24.
//

// 633. Sum of Square Numbers (Medium)
// https://leetcode.com/problems/sum-of-square-numbers/

public class Problem633 {
    public func run() {
        let solve1 = judgeSquareSum(5)
        print("\(solve1) -- should be true")
        let solve2 = judgeSquareSum(3)
        print("\(solve2) -- should be false")
        let solve3 = judgeSquareSum(4)
        print("\(solve3) -- should be true")
    }

    public func test(_ c: Int) -> Bool {
        return judgeSquareSum(c)
    }

    func judgeSquareSum(_ c: Int) -> Bool {
        var left = 0
        var right = Int(Double(c).squareRoot())
        while left <= right {
            let product = left * left + right * right
            if product == c {
                return true
            } else if product < c {
                left += 1
            } else {
                right -= 1
            }
        }

        return false
    }
}
