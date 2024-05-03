//
//  Problem584.swift
//  LeetCodeSwift
//
//  Created by Brian Prescott on 4/23/24.
//

// 584. Find Customer Referee (Easy)
// https://leetcode.com/problems/find-customer-referee/

public class Problem584 {
    public func run() {
        print("This is a SQL problem and cannot be run or tested from this application.")
        print("Here is the solution:")
        print(
"""
    select
    name
    from customer
    where  referee_id != 2 OR referee_id IS NULL
""")
    }

    public func test() -> Bool {
        return true
    }
}
