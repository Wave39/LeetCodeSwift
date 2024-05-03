//
//  Problem595.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/16/23.
//

// 595. Big Countries (Easy)
// https://leetcode.com/problems/big-countries/

public class Problem595 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select name, population, area from World
    where area >= 3000000
    or population >= 25000000
""")
    }

    public func test() -> Bool {
        return true
    }
}
