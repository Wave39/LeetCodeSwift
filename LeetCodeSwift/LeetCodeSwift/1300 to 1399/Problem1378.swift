//
//  Problem1378.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 4/24/24.
//

// 1378. Replace Employee ID With The Unique Identifier (Easy)
// https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/

public class Problem1378 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select unique_id, name from Employees e
    left join EmployeeUNI e2 on e2.id = e.id
""")
    }
}
