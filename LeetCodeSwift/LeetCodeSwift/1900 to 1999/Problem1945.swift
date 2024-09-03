//
//  Problem1945.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/3/24.
//

// 1945. Sum of Digits of String After Convert (Easy)
// https://leetcode.com/problems/sum-of-digits-of-string-after-convert/

public class Problem1945 {
    public func run() {
        let solve1 = getLucky("iiii", 1)
        print("\(solve1) -- should be 36")
        let solve2 = getLucky("leetcode", 2)
        print("\(solve2) -- should be 6")
        let solve3 = getLucky("zbax", 2)
        print("\(solve3) -- should be 8")
    }

    public func test(_ s: String, _ k: Int) -> Int {
        return getLucky(s, k)
    }

    func getLucky(_ s: String, _ k: Int) -> Int {
        var strValue = ""
        for c in Array(s) {
            strValue += String(c.asciiValue! - 96)
        }

        for _ in 1...k {
            var total = 0
            for c in Array(strValue) {
                total += Int(String(c))!
            }

            strValue = String(total)
        }

        return Int(strValue)!
    }
}
