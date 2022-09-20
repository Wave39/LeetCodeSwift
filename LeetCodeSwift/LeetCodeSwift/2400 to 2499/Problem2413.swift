//
//  Problem2413.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/20/22.
//

// 2413. Smallest Even Multiple
// https://leetcode.com/problems/smallest-even-multiple/

public class Problem2413 {
    public func run() {
        let solve1 = smallestEvenMultiple(5)
        print("\(solve1) -- should be 10")
        let solve2 = smallestEvenMultiple(6)
        print("\(solve2) -- should be 6")
    }

    public func test(_ n: Int) -> Int {
        return smallestEvenMultiple(n)
    }

    func smallestEvenMultiple(_ n: Int) -> Int {
        if n % 2 == 0 {
            return n
        }

        return n * 2
    }
}
