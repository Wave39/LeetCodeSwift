//
//  Problem7.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/17/22.
//

// 7. Reverse Integer (Medium)
// https://leetcode.com/problems/reverse-integer/

public class Problem7 {
    public func run() {
        let solve1 = reverse(123)
        print("\(solve1) -- should be 321")
        let solve2 = reverse(-123)
        print("\(solve2) -- should be -321")
        let solve3 = reverse(120)
        print("\(solve3) -- should be 21")
        let solve4 = reverse(1534236469)
        print("\(solve4) -- should be 0")
    }

    public func test(_ x: Int) -> Int {
        return reverse(x)
    }

    func reverse(_ x: Int) -> Int {
        var value = x
        var negative = false
        if value < 0 {
            value = -value
            negative = true
        }

        let valueString = "\(value)"
        let reversedString = String(valueString.reversed())
        var newValue = Int32(reversedString) ?? 0
        if newValue < 0 {
            return 0
        }

        if negative {
            newValue = -newValue
        }

        return Int(newValue)
    }
}
