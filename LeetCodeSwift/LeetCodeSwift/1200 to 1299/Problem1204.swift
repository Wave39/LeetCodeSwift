//
//  Problem1204.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/19/24.
//

// 1204. Last Person to Fit in the Bus (Medium)
// https://leetcode.com/problems/last-person-to-fit-in-the-bus/

public class Problem1204 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select top 1 person_name from
    (
        select person_name, turn, weight,
        running_total = SUM(weight) OVER (ORDER BY turn)
        from Queue
    ) tmp
    where running_total <= 1000
    order by turn desc
""")
    }

    public func test() -> Bool {
        return true
    }
}
