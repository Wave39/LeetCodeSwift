//
//  Problem577.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 5/2/24.
//

// 577. Employee Bonus (Easy)
// https://leetcode.com/problems/employee-bonus/

public class Problem577 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select name, bonus from Employee e
    left join Bonus b on e.empId = b.empId
    where bonus is null or bonus < 1000
""")
    }

    public func test() -> Bool {
        return true
    }
}
