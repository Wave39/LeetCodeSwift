//
//  Problem2864.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 3/1/24.
//

// 2864. Maximum Odd Binary Number (Easy)
// https://leetcode.com/problems/maximum-odd-binary-number/

// WOO HOO!!!
// Runtime: 3 ms, Beats 100.00% of users with Swift
// Memory: 16.06 MB, Beats 8.33% of users with Swift

import Foundation

public class Problem2864 {
    public func run() {
        let solve1 = maximumOddBinaryNumber("010")
        print("\(solve1) -- should be 001")
        let solve2 = maximumOddBinaryNumber("0101")
        print("\(solve2) -- should be 1001")
    }

    public func test(_ s: String) -> String {
        return maximumOddBinaryNumber(s)
    }

    func maximumOddBinaryNumber(_ s: String) -> String {
        let oneCount = s.filter { $0 == "1" }.count
        let leftOneCount = oneCount - 1
        return String(repeating: "1", count: leftOneCount) + String(repeating: "0", count: s.count - oneCount) + "1"
    }
}
