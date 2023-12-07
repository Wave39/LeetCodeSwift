//
//  Problem1903.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 12/7/23.
//

// 1903. Largest Odd Number in String (Easy)
// https://leetcode.com/problems/largest-odd-number-in-string/

public class Problem1903 {
    public func run() {
        let solve1 = largestOddNumber("52")
        print("\"\(solve1)\" -- should be \"5\"")
        let solve2 = largestOddNumber("4206")
        print("\"\(solve2)\" -- should be \"\"")
        let solve3 = largestOddNumber("35427")
        print("\"\(solve3)\" -- should be \"35427\"")
    }

    public func test(_ num: String) -> String {
        return largestOddNumber(num)
    }

    func largestOddNumber(_ num: String) -> String {
        let reverseNum = Array(String(num.reversed()))
        for idx in 0..<reverseNum.count {
            if "13579".contains(reverseNum[idx]) {
                var str = num
                str.removeLast(idx)
                return str
            }
        }

        return ""
    }

    func largestOddNumber_tooSlow(_ num: String) -> String {
        var str = num
        while str.count > 0 && "02468".contains(str.last!) {
            str.removeLast()
        }

        return str
    }
}
