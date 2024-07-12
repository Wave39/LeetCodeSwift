//
//  Problem1731.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/12/24.
//

// 1731. The Number of Employees Which Report to Each Employee (Easy)
// https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/

public class Problem1731 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select e1.employee_id, e1.name,
    count(e2.employee_id) as reports_count,
    round(avg(e2.age * 1.00), 0) as average_age
    from Employees e1
    join Employees e2 on e2.reports_to = e1.employee_id
    group by e1.employee_id, e1.name
    order by e1.employee_id
""")
    }

    public func test() -> Bool {
        return true
    }
}
