//
//  Problem570.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 5/3/24.
//

// 570. Managers with at Least 5 Direct Reports (Medium)
// https://leetcode.com/problems/managers-with-at-least-5-direct-reports/

public class Problem570 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select name from (
        select e1.name, (select count(id) from Employee where managerId = e1.id) as ctr from Employee e1
    ) d
    where ctr >= 5
""")
    }

    public func test() -> Bool {
        return true
    }
}
