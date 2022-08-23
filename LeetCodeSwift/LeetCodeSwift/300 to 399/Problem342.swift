//
//  Problem342.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/23/22.
//

// 342. Power of Four
// https://leetcode.com/problems/power-of-four/

public class Problem342 {
    public func run() {
        print("These should all be true:")
        print(isPowerOfFour(16))
        print(isPowerOfFour(1))
        print("These should all be false:")
        print(isPowerOfFour(5))
    }

    public func test(_ n: Int) -> Bool {
        return isPowerOfFour(n)
    }

    func isPowerOfFour(_ n: Int) -> Bool {
        var value = 1
        while true {
            if n == value {
                return true
            }

            value *= 4
            if value > n {
                return false
            }
        }
    }
}
