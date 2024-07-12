//
//  Problem180.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/12/24.
//

// 180. Consecutive Numbers (Medium)
// https://leetcode.com/problems/consecutive-numbers/

public class Problem180 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select distinct(L1.num) as ConsecutiveNums
    from Logs L1, Logs L2, Logs L3
    where L1.id = L2.id + 1
    and L2.id = L3.id + 1
    and L1.num = L2.num
    and L2.num = L3.num
""")
    }

    public func test() -> Bool {
        return true
    }
}
