//
//  Problem1581.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 4/26/24.
//

// 1581. Customer Who Visited but Did Not Make Any Transactions (Easy)
// https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/

public class Problem1581 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select customer_id, count(customer_id) as count_no_trans from Visits v
    where (select count(*) from Transactions where visit_id = v.visit_id) = 0
    group by customer_id
""")
    }

    public func test() -> Bool {
        return true
    }
}
