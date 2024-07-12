//
//  Problem1789.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/12/24.
//

// 1789. Primary Department for Each Employee (Easy)
// https://leetcode.com/problems/primary-department-for-each-employee/

public class Problem1789 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select employee_id, department_id
    from Employee
    where primary_flag = 'Y'

    union

    select employee_id, max(department_id)
    from Employee
    group by employee_id
    having count(department_id) = 1
""")
    }

    public func test() -> Bool {
        return true
    }
}
