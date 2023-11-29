//
//  Problem191.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 11/29/23.
//

// 191. Number of 1 Bits (Easy)
// https://leetcode.com/problems/number-of-1-bits/

public class Problem191 {
    public func run() {
        let solve1 = hammingWeight(11)
        print("\(solve1) -- should be 3")
    }

    public func test(_ n: Int) -> Int {
        return hammingWeight(n)
    }

    func hammingWeight(_ n: Int) -> Int {
        let str = String(n, radix: 2)
        return str.filter { $0 == "1" }.count
    }
}
