//
//  Problem338.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/1/23.
//

// 338. Counting Bits (Easy)
// https://leetcode.com/problems/counting-bits/

// WOO HOO!!!
// Memory: 18.68MB, Beats 100.00% of users with Swift

public class Problem338 {
    public func run() {
        let solve1 = countBits(2)
        print("\(solve1) -- should be [0, 1, 1]")
        let solve2 = countBits(5)
        print("\(solve2) -- should be [0, 1, 1, 2, 1, 2]")
    }

    public func test(_ n: Int) -> [Int] {
        return countBits(n)
    }

    func countBits(_ n: Int) -> [Int] {
        var retval = [Int]()
        for idx in 0...n {
            let binString = String(idx, radix: 2)
            retval.append(binString.filter { $0 == "1" }.count)
        }

        return retval
    }
}
