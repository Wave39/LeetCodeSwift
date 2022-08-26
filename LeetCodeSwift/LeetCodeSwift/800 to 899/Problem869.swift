//
//  Problem869.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 8/26/22.
//

// 869. Reordered Power of 2
// https://leetcode.com/problems/reordered-power-of-2/

// WOO HOO!!!
// Results:
// Runtime: 6 ms, faster than 100.00% of Swift online submissions for Reordered Power of 2.
// Memory Usage: 14 MB, less than 100.00% of Swift online submissions for Reordered Power of 2.

public class Problem869 {
    public func run() {
        let solve1 = reorderedPowerOf2(1)
        print("\(solve1) -- should be true")
        let solve2 = reorderedPowerOf2(10)
        print("\(solve2) -- should be false")
        let solve3 = reorderedPowerOf2(2410)
        print("\(solve3) -- should be true")
        let solve4 = reorderedPowerOf2(2411)
        print("\(solve4) -- should be false")
    }

    public func test(_ n: Int) -> Bool {
        return reorderedPowerOf2(n)
    }

    func getDigitArray(_ n: Int) -> [Int] {
        var arr = Array(repeating: 0, count: 10)

        for c in String(n) {
            arr[Int(String(c))!] += 1
        }

        return arr
    }

    func reorderedPowerOf2(_ n: Int) -> Bool {
        if n == 1 {
            return true
        }

        let nArray = getDigitArray(n)
        let nDigits = String(n).count
        var power = 2
        while String(power).count <= nDigits {
            if String(power).count == nDigits {
                let arr = getDigitArray(power)
                if nArray.elementsEqual(arr) {
                    return true
                }
            }

            power *= 2
        }

        return false
    }
}
