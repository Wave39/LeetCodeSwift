//
//  Problem12.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/16/23.
//

// 12. Integer to Roman (Medium)
// https://leetcode.com/problems/integer-to-roman/

public class Problem12 {
    public func run() {
        let solve1 = intToRoman(3)
        print("\(solve1) -- should be III")
        let solve2 = intToRoman(58)
        print("\(solve2) -- should be LVIII")
        let solve3 = intToRoman(1994)
        print("\(solve3) -- should be MCMXCIV")
        let solve4 = intToRoman(100)
        print("\(solve4) -- should be C")
    }

    public func test(_ num: Int) -> String {
        return intToRoman(num)
    }

    func intToRoman(_ num: Int) -> String {
        var retval = ""
        var val = num
        let testArray = [(1000, "M"), (900, "CM"), (500, "D"), (400, "CD"), (100, "C"), (90, "XC"), (50, "L"), (40, "XL"), (10, "X"), (9, "IX"), (5, "V"), (4, "IV"), (1, "I")]
        for test in testArray {
            while val >= test.0 {
                retval += test.1
                val -= test.0
            }
        }

        return retval
    }

    func intToRoman_unrolled(_ num: Int) -> String {
        var retval = ""
        var val = num
        while val >= 1000 {
            retval += "M"
            val -= 1000
        }

        if val >= 900 && val <= 999 {
            retval += "CM"
            val -= 900
        }

        while val >= 500 {
            retval += "D"
            val -= 500
        }

        if val >= 400 && val <= 499 {
            retval += "CD"
            val -= 400
        }

        while val >= 100 {
            retval += "C"
            val -= 100
        }

        if val >= 90 && val <= 99 {
            retval += "XC"
            val -= 90
        }

        while val >= 50 {
            retval += "L"
            val -= 50
        }

        if val >= 40 && val <= 49 {
            retval += "XL"
            val -= 40
        }

        while val >= 10 {
            retval += "X"
            val -= 10
        }

        if val == 9 {
            retval += "IX"
            val = 0
        }

        while val >= 5 {
            retval += "V"
            val -= 5
        }

        if val == 4 {
            retval += "IV"
            val = 0
        }

        while val >= 1 {
            retval += "I"
            val -= 1
        }

        return retval
    }
}
