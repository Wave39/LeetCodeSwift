//
//  Problem1907.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 9/19/24.
//

// 1907. Count Salary Categories (Medium)
// https://leetcode.com/problems/count-salary-categories/

public class Problem1907 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select category = 'Low Salary', 
        accounts_count = (select count(*) from Accounts where income < 20000)
    union
    select category = 'Average Salary', 
        accounts_count = (select count(*) from Accounts where income >= 20000 and income <= 50000)
    union
    select category = 'High Salary', 
        accounts_count = (select count(*) from Accounts where income > 50000)
""")
    }

    public func test() -> Bool {
        return true
    }
}
