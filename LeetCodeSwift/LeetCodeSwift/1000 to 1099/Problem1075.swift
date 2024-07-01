//
//  Problem1075.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 7/1/24.
//

// 1075. Project Employees I (Easy)
// https://leetcode.com/problems/project-employees-i/

public class Problem1075 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select p.project_id, round(avg(e.experience_years * 1.0), 2) as average_years from Project p
    inner join Employee e on p.employee_id = e.employee_id
    group by p.project_id
""")
    }

    public func test() -> Bool {
        return true
    }
}
