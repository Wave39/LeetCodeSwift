//
//  Problem13.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/17/23.
//

// 13. Roman to Integer (Easy)
// https://leetcode.com/problems/roman-to-integer/

public class Problem13 {
    public func run() {
        let solve1 = romanToInt("III")
        print("\(solve1) -- should be 3")
        let solve2 = romanToInt("LVIII")
        print("\(solve2) -- should be 58")
        let solve3 = romanToInt("MCMXCIV")
        print("\(solve3) -- should be 1994")
        let solve4 = romanToInt("C")
        print("\(solve4) -- should be 100")
    }

    public func test(_ s: String) -> Int {
        return romanToInt(s)
    }

    func romanToInt(_ s: String) -> Int {
        var retval = 0
        var val = s
        let testArray = [(1000, "M"), (900, "CM"), (500, "D"), (400, "CD"), (100, "C"), (90, "XC"), (50, "L"), (40, "XL"), (10, "X"), (9, "IX"), (5, "V"), (4, "IV"), (1, "I")]
        while val.count > 0 {
            for test in testArray {
                if val.starts(with: test.1) {
                    retval += test.0
                    val.removeFirst(test.1.count)
                }
            }
        }

        return retval
    }
}
