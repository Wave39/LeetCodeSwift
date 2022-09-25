//
//  Problem8.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/24/22.
//

// 8. String to Integer (atoi)
// https://leetcode.com/problems/string-to-integer-atoi/

public class Problem8 {
    public func run() {
        let solve1 = myAtoi("42")
        print("\(solve1) -- should be 42")
        let solve2 = myAtoi("   -42")
        print("\(solve2) -- should be -42")
        let solve3 = myAtoi("4193 with words")
        print("\(solve3) -- should be 4193")
        let solve4 = myAtoi("-91283472332")
        print("\(solve4) -- should be -2147483648")
        let solve5 = myAtoi("")
        print("\(solve5) -- should be 0")
        let solve6 = myAtoi(" ")
        print("\(solve6) -- should be 0")
    }

    public func test(_ s: String) -> Int {
        return myAtoi(s)
    }

    func myAtoi(_ s: String) -> Int {
        var str = s
        var sign = 1
        while str.starts(with: " ") {
            str.removeFirst()
        }

        if str.isEmpty {
            return 0
        }

        if str.first! == "-" {
            sign = -1
            str.removeFirst()
        } else if str.first! == "+" {
            str.removeFirst()
        }

        var retval = 0
        while !str.isEmpty && "0123456789".contains(str.first!) {
            retval &*= 10
            retval += Int(String(str.first!))!
            if sign == -1 && retval * -1 < Int32.min {
                return Int(Int32.min)
            } else if sign == 1 && retval > Int32.max {
                return Int(Int32.max)
            }

            str.removeFirst()
        }

        return Int(retval * sign)
    }
}
