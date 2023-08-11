//
//  Problem326.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/24/22.
//

// 326. Power of Three (Easy)
// https://leetcode.com/problems/power-of-three/

public class Problem326 {
    public func run() {
        print("These should all be true:")
        print(isPowerOfThree(27))
        print(isPowerOfThree(9))
        print("These should all be false:")
        print(isPowerOfThree(0))
    }

    public func test(_ n: Int) -> Bool {
        return isPowerOfThree(n)
    }

    func isPowerOfThree(_ n: Int) -> Bool {
        var value = 1
        while true {
            if n == value {
                return true
            }

            value *= 3
            if value > n {
                return false
            }
        }
    }
}
