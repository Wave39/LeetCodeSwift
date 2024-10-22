//
//  Problem1978.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 10/22/24.
//

// 1978. Employees Whose Manager Left the Company (Easy)
// https://leetcode.com/problems/employees-whose-manager-left-the-company/

public class Problem1978 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select e1.employee_id from Employees e1
    left join Employees e2 on e2.employee_id = e1.manager_id
    where e1.salary < 30000 and e1.manager_id is not null and e2.employee_id is null
    order by e1.employee_id
""")
    }

    public func test() -> Bool {
        return true
    }
}
